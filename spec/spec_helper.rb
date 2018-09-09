# frozen_string_literal: true

if ENV["COVERAGE"] == "true"
  require "simplecov"
  SimpleCov.start do
    add_filter "/spec/"
  end
  warn "simplecov required"
else
  warn "no simplecov"
end
ENV["BUNDLE_GEMFILE"] ||= File.expand_path(File.join("..", "Gemfile"), __dir__)
require "bundler/setup" if File.exist?(ENV["BUNDLE_GEMFILE"])
require "should_not/rspec"
require "fileutils"
require "detector"

Dir[File.join(__dir__, "support", "shared_contexts", "**", "*.rb")].each do |file|
  require file
end

RSpec.configure do |config|
  if ENV["CI"] == "true"
    config.add_formatter :progress
    out_dir = ENV.fetch("TEST_RESULTS_DIR") do
      fail StandardError, "TEST_RESULTS_DIR is required when CI == true"
    end
    FileUtils.mkdir_p out_dir
    require "rspec_junit_formatter"
    config.add_formatter ::RspecJunitFormatter, File.join(out_dir, "rspec.xml")
  else
    config.formatter = :documentation
  end
  config.pattern = "**/*_spec.rb"
  config.color = STDOUT.tty? || STDIN.tty?
  config.order = :random
  config.disable_monkey_patching!
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "./tmp/rspec-status.txt"
  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  $stdout = File.new(File::NULL, "w") if ENV["SUPPRESS_STDOUT"] == "enabled"
  $stderr = File.new(File::NULL, "w") if ENV["SUPPRESS_STDERR"] == "enabled"
end
