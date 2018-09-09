# frozen_string_literal: true

begin
  require "yard/rake/yardoc_task"
  YARD::Rake::YardocTask.new do |t|
    require "yard"
    t.options += ["--title", "Detector"]
  end
rescue LoadError => e
  warn e.message
end
