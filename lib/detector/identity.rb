# frozen_string_literal: true

module Detector
  # Gem identity information.
  module Identity
    def self.name
      "detector"
    end

    def self.label
      "Detector"
    end

    def self.version
      "0.1.0"
    end

    def self.version_label
      "#{label} #{version}"
    end
  end
end
