# frozen_string_literal: true

RSpec.shared_context "Temporary Directory", :temp_dir do
  let(:temp_dir) { File.expand_path(File.join("..", "..", "..", "tmp", "rspec"), __dir__) }

  around do |example|
    FileUtils.mkdir_p temp_dir
    example.run
  ensure
    FileUtils.rm_rf temp_dir
  end
end
