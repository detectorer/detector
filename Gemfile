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
  gem "rspec", "~> 3.8.0", require: nil # x
  gem "rspec_junit_formatter", "~> 0.4", require: nil
  gem "rubocop", "~> 0.58", require: nil # x
  gem "ruby-beautify2", "~> 0.98", require: nil
  gem "should_not", "~> 1.1.0", require: nil
  gem "simplecov", "~> 0.16.1", require: nil
  gem "yaml-lint", "~> 0.0.10", require: nil # x
  gem "yard", "~> 0.9", require: nil
  # rails_best_practices
  # codeclimate
  # travis
  # cane
  # code_metrics
  # coderay
  # churn
  # roodi
  # circleci
  # codeclimate
  # sonarqube
  # flog
  # flay
end

group :development do
  gem "pry", "~> 0.10"
  gem "pry-byebug", "~> 3.5"
  gem "spirit_hands"
end
