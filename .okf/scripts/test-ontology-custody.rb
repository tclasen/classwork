require 'minitest/autorun'
require 'tmpdir'
require 'fileutils'
require_relative 'ontology-custody'

class CustodyTest < Minitest::Test
  def setup
    @root = Dir.mktmpdir('custody-fixture-')
    FileUtils.mkdir_p(File.join(@root, '.okf/ontologies'))
    FileUtils.mkdir_p(File.join(@root, 'bundle'))
    @artifact = '@prefix ex: <https://example.test/> . ex:Thing a <http://www.w3.org/2002/07/owl#Class> .'
    File.write(File.join(@root, '.okf/ontologies/example.ttl'), @artifact)
    @catalog = {'ontologies' => {'example' => {'uri' => 'https://example.test/', 'release' => 'fixture-1', 'retrieval_uri' => 'https://example.test/example.ttl', 'local_path' => '.okf/ontologies/example.ttl', 'format' => 'turtle', 'license' => 'test-only', 'provenance' => 'synthetic fixture', 'retrieved' => '2026-10-30', 'sha256' => Digest::SHA256.hexdigest(@artifact)}}}
    @concept = {'type' => 'fixture', 'subject' => [], 'subject_review' => {'status' => 'pending', 'reason' => 'no-suitable-authoritative-class', 'reviewed' => {'by' => 'fixture', 'at' => '2026-10-30T00:00:00Z'}, 'checked_catalog_keys' => ['example']}}
    save
  end
  def teardown
    FileUtils.remove_entry(@root)
  end
  def save
    File.write(File.join(@root, '.okf/ontologies.yaml'), @catalog.to_yaml)
    File.write(File.join(@root, 'bundle/example.md'), @concept.to_yaml + "---\n# Fixture\n")
  end
  def snapshot
    OntologyCustody.snapshot(@root)
  end
  def test_valid_catalog_and_prefixed_term
    assert_equal 1, snapshot['artifacts'].length
    @concept.delete('subject_review')
    @concept['subject'] = [{'ontology' => 'example', 'class' => 'https://example.test/Thing'}]
    save
    assert_equal 1, snapshot['concepts'].length
  end
  def test_tampered_digest
    File.write(File.join(@root, '.okf/ontologies/example.ttl'), @artifact + ' changed')
    assert_raises(OntologyCustody::Invalid) { snapshot }
  end
  def test_missing_dependency
    @catalog['ontologies']['example']['dependencies'] = ['absent']; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
  end
  def test_unknown_subject_key_and_absent_term
    @concept.delete('subject_review')
    @concept['subject'] = [{'ontology' => 'absent', 'class' => 'https://example.test/Thing'}]; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
    @concept['subject'][0]['ontology'] = 'example'
    @concept['subject'][0]['class'] = 'https://example.test/NotDefined'; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
  end
  def test_pending_catalog_mismatch
    @concept['subject_review']['checked_catalog_keys'] = []; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
  end
  def test_unsupported_format_and_duplicate_yaml_key
    @catalog['ontologies']['example']['format'] = 'unknown'; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
    assert_raises(OntologyCustody::Invalid) { OntologyCustody.yaml("a: 1\na: 2\n") }
  end
  def test_stale_inventory
    assert_equal 0, OntologyCustody.run(['--root', @root, '--write-inventory'])
    assert_equal 0, OntologyCustody.run(['--root', @root, '--check'])
    @concept['title'] = 'Changed'; save
    assert_equal 1, OntologyCustody.run(['--root', @root, '--check'])
  end
  def test_path_escape_and_duplicate_owner
    @catalog['ontologies']['example']['local_path'] = '../outside.ttl'; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
    @catalog['ontologies']['example']['local_path'] = '.okf/ontologies/example.ttl'
    @catalog['ontologies']['duplicate'] = @catalog['ontologies']['example'].dup; save
    assert_raises(OntologyCustody::Invalid) { snapshot }
  end
end
