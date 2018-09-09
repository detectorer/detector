# frozen_string_literal: true

desc "Run code quality checks"
task code_quality: %i[bundle:audit git_cop reek rubocop yaml_lint]
