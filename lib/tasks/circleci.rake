# frozen_string_literal: true

namespace :circleci do
  namespace :local do
    desc "Run a job in a container on the local machine"
    task :execute do
      sh "circleci local execute"
    end
  end
end
