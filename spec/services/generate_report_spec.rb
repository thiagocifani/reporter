require "rails_helper"

describe GenerateReport do
  let(:collection) {  [{ "layerName" => "yay" }] }
  let(:jrxml) { Rails.root.join("spec", "resources", "original.jrxml").to_s }
  let(:report) { FactoryGirl.create(:report, name: "teste", template: jrxml) }

  subject { GenerateReport.new(report.id) }

  it "#render" do
    expect(subject.render).to_not be_nil
  end
end
