# frozen_string_literal: true

desc "Check YAML files"
task :yaml_lint do
  args = %w[yaml-lint]
  args += Dir["{.[^/],}**/{.,}*\.y{a,}ml"].reject { |f| f.start_with? "vendor/" }
  args << "-n"
  args << "-c" unless STDOUT.tty?
  sh(*args)
end
