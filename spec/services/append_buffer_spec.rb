require "rails_helper"

describe AppendBuffer do
  let(:report) { FactoryGirl.create(:report) }
  let(:collection) {  [{ "teste" => "yay" }] }
  subject { AppendBuffer.new(report.id, collection) }

  context "add content" do
    it "#add_to_collection" do
      report = subject.add_to_collection
      expect(report.collection).to eq collection
    end
  end
end
