# frozen_string_literal: true

begin
  require "gemsmith/rake/setup"
rescue LoadError => e
  warn e.message
end
