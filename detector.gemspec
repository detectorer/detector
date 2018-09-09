# frozen_string_literal: true

$LOAD_PATH.append File.expand_path("lib", __dir__)
require "detector/identity"

Gem::Specification.new do |spec|
  spec.name = Detector::Identity.name
  spec.version = Detector::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Barry Allard"]
  spec.email = ["barry.allard@gmail.com"]
  spec.homepage = "https://github.com/detector/detector"
  spec.summary = ""
  spec.license = "MIT"

  spec.metadata = {
    "source_code_uri" => "https://github.com/detector/detector",
    "changelog_uri" => "https://github.com/detector/detector/master/tree/CHANGES.md",
    "bug_tracker_uri" => "https://github.com/detector/detector/issues"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 2.5"
  spec.add_dependency "runcom", "~> 3.1"
  spec.add_dependency "thor", "~> 0.20"

  spec.files = Dir[File.join("lib", "**", "*")]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.bindir = "exe"
  spec.executables += Dir[File.join("exe", "*")].map { |x| File.basename x }
  spec.require_paths = ["lib"]
end
