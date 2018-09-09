# frozen_string_literal: true

begin
  require "git/cop/rake/setup"
rescue LoadError => e
  warn e.message
end
