# frozen_string_literal: true

$LOAD_PATH.append File.expand_path("lib", __dir__)
require "detector/identity"

Gem::Specification.new do |spec|
  spec.name = Detector::Identity.name
  spec.version = Detector::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Barry Allard"]
  spec.email = ["barry.allard@gmail.com"]
  spec.homepage = ""
  spec.summary = ""
  spec.license = "MIT"

  spec.metadata = {
    "source_code_uri" => "",
    "changelog_uri" => "/blob/master/CHANGES.md",
    "bug_tracker_uri" => "/issues"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 2.5"
  spec.add_dependency "runcom", "~> 3.1"
  spec.add_dependency "thor", "~> 0.20"
  spec.add_development_dependency "bundler-audit", "~> 0.6"
  spec.add_development_dependency "gemsmith", "~> 12.3"
  spec.add_development_dependency "git-cop", "~> 2.2"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-byebug", "~> 3.5"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "reek", "~> 5.0"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "rubocop", "~> 0.58"

  spec.files = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.executables << "detector"
  spec.require_paths = ["lib"]
end
