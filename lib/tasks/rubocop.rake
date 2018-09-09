# frozen_string_literal: true

begin
  require "rubocop/rake_task"
  RuboCop::RakeTask.new
rescue LoadError => e
  warn e.message
end
