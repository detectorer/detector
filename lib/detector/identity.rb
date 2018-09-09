# frozen_string_literal: true

module Detector
  # Gem identity information.
  module Identity
    # name of the gem
    def self.name
      "detector"
    end

    # proper name of the gem
    def self.label
      "Detector"
    end

    # version of the gem
    def self.version
      "0.1.0"
    end

    # name and version of the gem
    def self.version_label
      "#{label} #{version}"
    end
  end
end
