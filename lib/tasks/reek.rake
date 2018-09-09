# frozen_string_literal: true

begin
  require "reek/rake/task"
  Reek::Rake::Task.new do |t|
    t.source_files = "{Gemfile,Rakefile,*.gemspec,{lib,spec,app,test}/**/*.{rb,rake}}"
    t.reek_opts = ENV["CI"] == "true" ? "-U -f xml" : "-U"
  end
rescue LoadError => e
  warn e.message
end
