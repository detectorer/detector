# frozen_string_literal: true

require "bundler/setup" if File.exist?(File.expand_path("Gemfile", __dir__))

Dir[File.expand_path(File.join("lib", "tasks", "**", "*.rake"), __dir__)].each do |task|
  load task
end
