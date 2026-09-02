#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "date"
require "digest"
require "json"
require "pathname"
require "rexml/document"
require "rexml/parsers/pullparser"
require "time"
require "yaml"

ROOT = Pathname.new(File.expand_path("..", __dir__))
BUNDLE = ROOT.join("bundle")
CATALOG_PATH = ROOT.join(".okf/ontologies.yaml")
RESERVED = %w[index.md log.md].freeze
CATALOG_FIELDS = %w[uri release retrieval_uri local_path format license provenance retrieved sha256].freeze
SUBJECT_FIELDS = %w[ontology class].freeze
SUBJECT_ALLOWED_FIELDS = %w[ontology class label].freeze
PENDING_FIELDS = %w[status reason reviewed checked_catalog_keys].freeze
REVIEWED_FIELDS = %w[by at].freeze

# These very broad classes describe only the general shape of many topics. They
# are not acceptable merely as a way to avoid an honest pending classification.
PROHIBITED_GENERIC_CLASSES = {
  "http://www.w3.org/ns/prov#Entity" => "PROV Entity",
  "http://www.w3.org/ns/prov#Activity" => "PROV Activity",
  "http://www.w3.org/ns/prov#Agent" => "PROV Agent",
  "http://www.w3.org/ns/prov#Plan" => "PROV Plan",
  "http://www.w3.org/ns/mls#Process" => "ML-Schema Process",
  "https://spdx.org/rdf/3.0.1/terms/Core/Relationship" => "SPDX Relationship"
}.freeze

@errors = []

def error(message)
  @errors << message
end

def safe_yaml(text, source)
  YAML.safe_load(text, permitted_classes: [Date, Time], permitted_symbols: [], aliases: false)
rescue Psych::Exception => e
  error("#{source}: invalid YAML: #{e.message.lines.first.to_s.strip}")
  nil
end

def frontmatter(path)
  text = path.binread.force_encoding(Encoding::UTF_8)
  unless text.valid_encoding?
    error("#{path.relative_path_from(ROOT)}: is not valid UTF-8")
    return [nil, ""]
  end
  match = text.match(/\A---[ \t]*\r?\n(.*?)\r?\n---[ \t]*\r?\n/m)
  unless match
    error("#{path.relative_path_from(ROOT)}: missing parseable frontmatter delimiters")
    return [nil, text]
  end
  metadata = safe_yaml(match[1], path.relative_path_from(ROOT).to_s)
  unless metadata.is_a?(Hash)
    error("#{path.relative_path_from(ROOT)}: frontmatter must be a mapping") if metadata
    metadata = nil
  end
  [metadata, text[match.end(0)..-1].to_s]
end

def scalar_present?(value)
  (value.is_a?(String) && !value.strip.empty?) || value.is_a?(Numeric) || value.is_a?(Date) || value.is_a?(Time)
end

def timezone_datetime?(value)
  string = value.is_a?(Time) ? value.iso8601 : value.to_s
  return false unless string.match?(/T/) && string.match?(/(?:Z|[+-]\d{2}:\d{2})\z/)
  Time.iso8601(string)
  true
rescue ArgumentError
  false
end

def strip_turtle_comments(text)
  output = +""
  text.each_line do |line|
    in_iri = false
    quote = nil
    escaped = false
    line.each_char do |char|
      if escaped
        output << char
        escaped = false
      elsif quote
        output << char
        if char == "\\"
          escaped = true
        elsif char == quote
          quote = nil
        end
      elsif in_iri
        output << char
        in_iri = false if char == ">"
      elsif char == "<"
        output << char
        in_iri = true
      elsif char == '"' || char == "'"
        output << char
        quote = char
      elsif char == "#"
        break
      else
        output << char
      end
    end
    output << "\n"
  end
  output
end

def expand_turtle_term(term, prefixes)
  token = term.to_s.strip.sub(/[;,]\z/, "")
  return token[1...-1] if token.start_with?("<") && token.end_with?(">")
  match = token.match(/\A([A-Za-z][\w.-]*|):([A-Za-z0-9_~.%-]+)\z/)
  return nil unless match
  base = prefixes[match[1] == ":" ? "" : match[1]]
  base && "#{base}#{match[2]}"
end

def turtle_classes(text)
  clean = strip_turtle_comments(text)
  prefixes = {}
  clean.scan(/(?:@prefix|PREFIX)\s+([A-Za-z][\w.-]*|):\s*<([^>]+)>\s*\.?/i) do |prefix, uri|
    prefixes[prefix == ":" ? "" : prefix] = uri
  end
  classes = {}
  term = /(?:<[^>]+>|(?:[A-Za-z][\w.-]*|):[A-Za-z0-9_~.%-]+)/
  clean.scan(/(#{term})\s+(?:a|rdf:type)\s+([^.;]+?)(?=\s*[.;])/m) do |subject, types|
    next unless types.split(/\s*,\s*/).any? do |type|
      expanded = expand_turtle_term(type.split(/\s+/).first, prefixes)
      expanded == "http://www.w3.org/2002/07/owl#Class" ||
        expanded == "http://www.w3.org/2000/01/rdf-schema#Class"
    end
    uri = expand_turtle_term(subject, prefixes)
    classes[uri] = true if uri
  end
  classes
end

def rdfxml_classes(text, source)
  parser = REXML::Parsers::PullParser.new(text)
  classes = {}
  descriptions = []
  while parser.has_next?
    event = parser.pull
    if event.start_element?
      name = event[0]
      attributes = event[1]
      about = attributes.find { |key, _| key.to_s.split(":").last == "about" }&.last
      resource = attributes.find { |key, _| key.to_s.split(":").last == "resource" }&.last
      local_name = name.to_s.split(":").last
      classes[about] = true if local_name == "Class" && about
      current_description = local_name == "Description" ? about : descriptions.last
      if local_name == "type" && current_description &&
         ["http://www.w3.org/2002/07/owl#Class", "http://www.w3.org/2000/01/rdf-schema#Class"].include?(resource)
        classes[current_description] = true
      end
      descriptions << current_description
    elsif event.end_element?
      descriptions.pop
    end
  end
  classes
rescue REXML::ParseException => e
  error("#{source}: invalid RDF/XML: #{e.message.lines.first.to_s.strip}")
  {}
end

def json_classes(text, source)
  value = JSON.parse(text)
  classes = {}
  visit = lambda do |node|
    case node
    when Array
      node.each { |child| visit.call(child) }
    when Hash
      types = Array(node["@type"] || node["type"])
      identifier = node["@id"] || node["id"]
      if identifier.is_a?(String) && types.any? { |type| type.to_s.end_with?("#Class") || type == "owl:Class" || type == "rdfs:Class" }
        classes[identifier] = true
      end
      node.each_value { |child| visit.call(child) }
    end
  end
  visit.call(value)
  classes
rescue JSON::ParserError => e
  error("#{source}: invalid JSON ontology: #{e.message}")
  {}
end

def ontology_classes(format, bytes, source)
  case format
  when "turtle"
    turtle_classes(bytes.force_encoding(Encoding::UTF_8))
  when "owl-rdfxml", "rdfxml", "rdf-xml"
    rdfxml_classes(bytes.force_encoding(Encoding::UTF_8), source)
  when "json", "json-ld", "jsonld"
    json_classes(bytes.force_encoding(Encoding::UTF_8), source)
  else
    error("#{source}: unsupported ontology format #{format.inspect}")
    {}
  end
end

def markdown_headings(body)
  headings = {}
  counts = Hash.new(0)
  in_fence = false
  body.each_line do |line|
    if line.match?(/^\s*```/)
      in_fence = !in_fence
      next
    end
    next if in_fence
    match = line.match(/^ {0,3}\#{1,6}\s+(.+?)\s*\#*\s*$/)
    next unless match
    heading = match[1].gsub(/`([^`]*)`/, '\\1').gsub(/<[^>]*>/, "")
    slug = heading.downcase.gsub(/[^\p{L}\p{N}\s_-]/, "").strip.gsub(/\s+/, "-")
    occurrence = counts[slug]
    counts[slug] += 1
    slug = "#{slug}-#{occurrence}" if occurrence.positive?
    headings[slug] = true
  end
  headings
end

def validate_markdown(path, body, heading_cache)
  relative = path.relative_path_from(ROOT).to_s
  error("#{relative}: contains a split Markdown link") if body.match?(/\]\([^\n)]*\n/)
  error("#{relative}: uses nonportable MathJax delimiters") if body.match?(/\\[\[(]|\\[\])]/)
  display_count = body.each_line.count { |line| line.strip == "$$" }
  error("#{relative}: has an unpaired display MathJax delimiter") if display_count.odd?
  mermaid_open = false
  body.each_line do |line|
    if !mermaid_open && line.match?(/^\s*```mermaid\s*$/)
      mermaid_open = true
    elsif mermaid_open && line.match?(/^\s*```\s*$/)
      mermaid_open = false
    end
  end
  error("#{relative}: has an unclosed Mermaid fence") if mermaid_open

  body.scan(/(?<!!)\[[^\]]*\]\(([^)]+)\)/).flatten.each do |raw_target|
    target = raw_target.strip.sub(/\s+["'][^"']*["']\z/, "")
    next if target.empty? || target.match?(/\A(?:https?:|mailto:)/i)
    file_part, fragment = target.split("#", 2)
    if file_part.start_with?("/")
      error("#{relative}: internal link must not have a leading slash: #{target}")
      next
    end
    resolved = file_part.empty? ? path : path.dirname.join(CGI.unescape(file_part)).cleanpath
    unless resolved.to_s.end_with?(".md")
      error("#{relative}: internal link must target a .md file: #{target}")
      next
    end
    unless resolved.file?
      error("#{relative}: internal link target does not exist: #{target}")
      next
    end
    next unless fragment && !fragment.empty?
    headings = heading_cache[resolved.to_s] ||= markdown_headings(frontmatter(resolved)[1])
    slug = CGI.unescape(fragment).downcase
    error("#{relative}: heading fragment does not resolve: #{target}") unless headings[slug]
  end
end

catalog_document = safe_yaml(CATALOG_PATH.read, CATALOG_PATH.relative_path_from(ROOT).to_s)
catalog = catalog_document.is_a?(Hash) ? catalog_document["ontologies"] : nil
unless catalog.is_a?(Hash) && !catalog.empty?
  error(".okf/ontologies.yaml: ontologies must be a non-empty mapping")
  catalog = {}
end
catalog_keys = catalog.keys.map(&:to_s).sort
if catalog.keys.map(&:to_s) != catalog.keys.map(&:to_s).uniq
  error(".okf/ontologies.yaml: ontology keys must be unique")
end

class_indexes = {}
catalog.each do |key, entry|
  location = ".okf/ontologies.yaml ontology #{key}"
  unless entry.is_a?(Hash)
    error("#{location}: entry must be a mapping")
    next
  end
  CATALOG_FIELDS.each do |field|
    error("#{location}: missing or empty #{field}") unless scalar_present?(entry[field])
  end
  local_path = entry["local_path"].to_s
  artifact = ROOT.join(local_path).cleanpath
  unless artifact.to_s.start_with?(ROOT.join(".okf/ontologies").to_s + File::SEPARATOR)
    error("#{location}: local_path must stay under .okf/ontologies/")
    next
  end
  unless artifact.file?
    error("#{location}: artifact does not exist: #{local_path}")
    next
  end
  bytes = artifact.binread
  error("#{location}: artifact is empty") if bytes.empty?
  expected_sha = entry["sha256"].to_s
  unless expected_sha.match?(/\A[0-9a-f]{64}\z/)
    error("#{location}: sha256 must be 64 lowercase hexadecimal characters")
  end
  actual_sha = Digest::SHA256.hexdigest(bytes)
  error("#{location}: checksum mismatch (#{actual_sha})") unless expected_sha == actual_sha
  canonical_uri = entry["uri"].to_s
  error("#{location}: canonical URI is absent from artifact") unless bytes.include?(canonical_uri)
  class_indexes[key.to_s] = ontology_classes(entry["format"].to_s, bytes, local_path)
end

concept_paths = Dir[BUNDLE.join("**/*.md").to_s].map { |file| Pathname.new(file) }
  .reject { |path| RESERVED.include?(path.basename.to_s) }.sort
heading_cache = {}
pending_paths = []

concept_paths.each do |path|
  metadata, body = frontmatter(path)
  next unless metadata
  relative = path.relative_path_from(ROOT).to_s
  error("#{relative}: type must be a non-empty string") unless metadata["type"].is_a?(String) && !metadata["type"].strip.empty?
  subjects = metadata["subject"]
  unless subjects.is_a?(Array)
    error("#{relative}: subject must be an array")
    validate_markdown(path, body, heading_cache)
    next
  end

  review = metadata["subject_review"]
  if subjects.empty?
    pending_paths << relative
    unless review.is_a?(Hash)
      error("#{relative}: empty subject requires a subject_review mapping")
    else
      unknown = review.keys.map(&:to_s) - PENDING_FIELDS
      missing = PENDING_FIELDS - review.keys.map(&:to_s)
      error("#{relative}: subject_review has unknown fields: #{unknown.join(', ')}") unless unknown.empty?
      error("#{relative}: subject_review is missing fields: #{missing.join(', ')}") unless missing.empty?
      error("#{relative}: subject_review.status must be pending") unless review["status"] == "pending"
      unless review["reason"] == "no-suitable-authoritative-class"
        error("#{relative}: subject_review.reason must be no-suitable-authoritative-class")
      end
      reviewed = review["reviewed"]
      unless reviewed.is_a?(Hash) && reviewed.keys.map(&:to_s).sort == REVIEWED_FIELDS.sort
        error("#{relative}: subject_review.reviewed must contain exactly by and at")
      else
        error("#{relative}: subject_review.reviewed.by must be non-empty") unless reviewed["by"].is_a?(String) && !reviewed["by"].strip.empty?
        error("#{relative}: subject_review.reviewed.at must be a timezone-bearing ISO 8601 datetime") unless timezone_datetime?(reviewed["at"])
      end
      checked = review["checked_catalog_keys"]
      unless checked.is_a?(Array) && checked.all? { |key| key.is_a?(String) } && checked == catalog_keys
        error("#{relative}: checked_catalog_keys must exactly equal the sorted current catalog keys")
      end
    end
  else
    error("#{relative}: non-empty subject must not have subject_review") if metadata.key?("subject_review")
    subjects.each_with_index do |subject, index|
      location = "#{relative}: subject[#{index}]"
      unless subject.is_a?(Hash)
        error("#{location} must be a mapping")
        next
      end
      unknown = subject.keys.map(&:to_s) - SUBJECT_ALLOWED_FIELDS
      error("#{location} has unknown fields: #{unknown.join(', ')}") unless unknown.empty?
      missing = SUBJECT_FIELDS.reject { |field| subject[field].is_a?(String) && !subject[field].strip.empty? }
      error("#{location} missing non-empty fields: #{missing.join(', ')}") unless missing.empty?
      if subject.key?("label") && (!subject["label"].is_a?(String) || subject["label"].strip.empty?)
        error("#{location} label must be a non-empty string when present")
      end
      ontology = subject["ontology"].to_s
      class_uri = subject["class"].to_s
      unless catalog.key?(ontology)
        error("#{location} uses unknown ontology key #{ontology.inspect}")
        next
      end
      if PROHIBITED_GENERIC_CLASSES.key?(class_uri)
        error("#{location} uses prohibited generic fallback #{PROHIBITED_GENERIC_CLASSES[class_uri]} (#{class_uri})")
      end
      unless class_indexes.fetch(ontology, {}).key?(class_uri)
        error("#{location} class does not resolve in #{ontology}: #{class_uri}")
      end
    end
  end
  validate_markdown(path, body, heading_cache)
end

# Index and log files are not concepts, but their local links must remain valid.
Dir[BUNDLE.join("**/{index,log}.md").to_s].sort.each do |file|
  path = Pathname.new(file)
  text = path.read
  body = if path == BUNDLE.join("index.md") && text.start_with?("---\n")
           frontmatter(path)[1]
         else
           text
         end
  validate_markdown(path, body, heading_cache)
end

if @errors.empty?
  puts "Validated #{concept_paths.length} concepts, #{catalog.length} ontology pins, and #{pending_paths.length} pending subject reviews."
  exit 0
end

warn "Bundle validation failed with #{@errors.length} error(s):"
@errors.each { |message| warn "- #{message}" }
exit 1
