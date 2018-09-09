# frozen_string_literal: true

source "https://rubygems.org"
gemspec

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

group :test, :development do
  gem "gemsmith", "~> 12.3", require: nil
  gem "rake", "~> 12.3", require: nil
end

group :test do
  gem "bundler-audit", "~> 0.6", require: nil # x
  gem "coveralls", github: "Coveralls-Community/coveralls-ruby", require: nil
  gem "git-cop", "~> 2.2", require: nil # x
  gem "metric_fu", github: "steakknife/metric_fu", require: nil
  gem "reek", "~> 4.4", require: nil # x
  gem "rspec", "~> 3.8", require: nil # x
  gem "rubocop", "~> 0.58", require: nil # x
  gem "ruby-beautify2", "~> 0.98", require: nil
  gem "rubycritic", "~> 3.5", require: nil
  gem "simplecov", "~> 0.16.1", require: nil
  gem "yard", "~> 0.9", require: nil
end

group :development do
  gem "pry", "~> 0.10", require: nil
  gem "pry-byebug", "~> 3.5", require: nil
  gem "spirit_hands", require: nil
end
