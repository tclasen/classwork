#!/usr/bin/env ruby
# Offline custody and catalog-coverage checks; not an RDF parser or semantic verifier.
require 'yaml'
require 'date'
require 'digest'
require 'json'
require 'optparse'
require 'pathname'

module OntologyCustody
  class Invalid < StandardError; end
  REQUIRED = %w[uri release retrieval_uri local_path format license provenance retrieved sha256].freeze
  def self.need(condition, message)
    raise Invalid, message unless condition
  end
  def self.yaml(text)
    # Psych otherwise accepts duplicate mapping keys silently.
    tree = Psych.parse(text)
    visit = lambda do |node|
      if node.is_a?(Psych::Nodes::Mapping)
        keys = node.children.each_slice(2).map { |k, _| k.respond_to?(:value) ? k.value : nil }
        need(keys.compact.uniq.length == keys.length, 'duplicate or complex YAML key')
      end
      (node.respond_to?(:children) ? node.children : nil).to_a.each { |x| visit.call(x) }
    end
    visit.call(tree) if tree
    YAML.safe_load(text, [Date, Time], [], false)
  end
  def self.snapshot(root)
    root = Pathname.new(root).realpath
    catalog_path = root.join('.okf/ontologies.yaml')
    catalog_bytes = catalog_path.binread
    catalog = yaml(catalog_bytes).fetch('ontologies')
    need(catalog.is_a?(Hash) && !catalog.empty?, 'missing ontology catalog')
    paths = []
    rows = catalog.keys.sort.map do |key|
      item = catalog[key]
      need(item.is_a?(Hash), "#{key}: expected mapping")
      REQUIRED.each { |f| need(item.key?(f) && !item[f].to_s.strip.empty?, "#{key}: missing #{f}") }
      %w[uri retrieval_uri].each { |f| need(item[f].is_a?(String) && item[f].match?(/\Ahttps?:\/\/[^\s]+\z/), "#{key}: invalid #{f}") }
      begin
        Date.iso8601(item['retrieved'].to_s)
      rescue ArgumentError
        raise Invalid, "#{key}: invalid retrieval date"
      end
      need(item['sha256'].to_s.match?(/\A[0-9a-f]{64}\z/), "#{key}: invalid sha256")
      relative = Pathname.new(item['local_path'].to_s)
      need(!relative.absolute? && relative.to_s.start_with?('.okf/ontologies/'), "#{key}: unsafe artifact path")
      file = root.join(relative).realpath
      need(file.to_s.start_with?(root.join('.okf/ontologies').to_s + '/'), "#{key}: artifact escapes custody directory")
      need(!paths.include?(file.to_s), "#{key}: duplicate artifact owner")
      paths << file.to_s
      bytes = file.binread
      need(!bytes.empty? && !bytes.start_with?('version https://git-lfs.github.com/spec/v1'), "#{key}: empty or unhydrated artifact")
      need(!bytes.lstrip.match?(/\A(?:<!doctype html|<html)/i), "#{key}: HTML response is not an ontology")
      need(Digest::SHA256.hexdigest(bytes) == item['sha256'], "#{key}: artifact digest mismatch")
      format = item['format']
      need(%w[turtle owl-rdfxml].include?(format), "#{key}: unsupported format #{format}")
      need(format == 'turtle' ? bytes.match?(/(?:@prefix|PREFIX)\s/) : bytes.include?('<rdf:RDF'), "#{key}: file signature does not match format")
      dependencies = item.fetch('dependencies', [])
      need(dependencies.is_a?(Array) && dependencies.uniq == dependencies && dependencies.all? { |k| catalog.key?(k) }, "#{key}: missing or duplicate declared dependency")
      {'key' => key, 'metadata' => item, 'bytes' => bytes.bytesize, 'sha256' => Digest::SHA256.hexdigest(bytes)}
    end
    concepts = Dir.glob(root.join('bundle/**/*.md').to_s).sort.map do |path|
      next if %w[index.md log.md].include?(File.basename(path))
      bytes = File.binread(path)
      match = bytes.match(/\A---\s*\n(.*?)\n---(?:\s*\n|\z)/m)
      need(match, "#{path}: missing frontmatter")
      data = yaml(match[1])
      need(data.is_a?(Hash) && data['type'].is_a?(String) && !data['type'].strip.empty?, "#{path}: invalid type")
      subject = data['subject']
      need(subject.is_a?(Array), "#{path}: subject must be an array")
      if subject.empty?
        review = data['subject_review']
        need(review.is_a?(Hash) && review['status'] == 'pending' && review['reason'] == 'no-suitable-authoritative-class', "#{path}: missing pending review")
        need(review['checked_catalog_keys'] == catalog.keys.sort, "#{path}: pending review catalog mismatch")
        event = review['reviewed']
        need(event.is_a?(Hash) && !event['by'].to_s.strip.empty? && event['at'].to_s.match?(/(?:Z|[+-]\d{2}:\d{2})\z/), "#{path}: invalid reviewer event")
      else
        need(!data.key?('subject_review'), "#{path}: subject and pending review are mutually exclusive")
        subject.each do |term|
          need(term.is_a?(Hash) && catalog.key?(term['ontology']), "#{path}: unknown ontology key")
          uri = term['class']
          need(uri.is_a?(String) && uri.match?(/\Ahttps?:\/\//), "#{path}: invalid class URI")
          artifact = root.join(catalog[term['ontology']]['local_path']).binread
          # Full URI or Turtle prefixed representation is evidence of occurrence only.
          present = artifact.include?(uri)
          unless present
            artifact.scan(/(?:@prefix|PREFIX)\s+([\w-]*):\s*<([^>]+)>/i).each do |prefix, namespace|
              if uri.start_with?(namespace)
                local = uri.delete_prefix(namespace)
                present ||= artifact.match?(/(?<![\w:-])#{Regexp.escape(prefix + ':' + local)}(?![\w-])/)
              end
            end
          end
          need(present, "#{path}: required class URI absent from pinned artifact")
        end
      end
      {'path' => Pathname.new(path).relative_path_from(root).to_s, 'sha256' => Digest::SHA256.hexdigest(bytes), 'subject' => subject, 'subject_review' => data['subject_review']}
    end
    concepts.compact!
    {'schema' => 1, 'generated_by' => '.okf/scripts/ontology-custody.rb', 'scope' => 'custody and catalog coverage only; semantic verification remains separate', 'catalog_sha256' => Digest::SHA256.hexdigest(catalog_bytes), 'artifacts' => rows, 'concepts' => concepts}
  end
  def self.run(argv)
    root = File.expand_path('../..', __dir__)
    write = false
    OptionParser.new do |opts|
      opts.on('--root PATH') { |p| root = p }
      opts.on('--write-inventory') { write = true }
      opts.on('--check') { write = false }
    end.parse!(argv)
    need(argv.empty?, 'unexpected arguments')
    result = snapshot(root)
    bytes = JSON.pretty_generate(result) + "\n"
    target = File.join(root, '.okf/ontology-inventory.json')
    if write
      File.write(target, bytes)
    else
      need(File.file?(target) && File.binread(target) == bytes, 'generated ontology inventory is missing or stale; regenerate after authorized source changes')
    end
    puts "PASS custody/catalog coverage: #{result['artifacts'].length} artifacts, #{result['concepts'].length} concepts (semantic checks separate)"
    0
  rescue Invalid, KeyError, Psych::Exception, SystemCallError, OptionParser::ParseError => e
    warn "FAIL custody/catalog coverage: #{e.message}"
    1
  end
end
exit OntologyCustody.run(ARGV) if $PROGRAM_NAME == __FILE__
