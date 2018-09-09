# frozen_string_literal: true

begin
  require "reek/rake/task"
  Reek::Rake::Task.new
rescue LoadError => e
  warn e.message
end
