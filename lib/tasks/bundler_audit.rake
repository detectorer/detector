# frozen_string_literal: true

begin
  require "bundler/audit/task"
  Bundler::Audit::Task.new
rescue LoadError => e
  warn e.message
end
