# frozen_string_literal: true

RSpec.describe Detector::Identity do
  context ".name" do
    it { expect(::Detector::Identity.name).to eq("detector") }
  end

  context ".label" do
    it { expect(::Detector::Identity.label).to eq("Detector") }
  end

  context ".version" do
    let(:v) { ::Detector::Identity.version }
    it { expect(v).to match(/\A\d+\.\d+\.\d+[a-z0-9]*\z/) }
  end

  context ".version_label" do
    let(:vl) { ::Detector::Identity.version_label }
    it { expect(vl).to match(/\A.*[^\s].+\s+\d+\.\d+\.\d+[a-z0-9]*\z/) }
  end
end
