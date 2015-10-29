require "rails_helper"

describe ReportController do
  let(:collection) {  [{ "layerName" => "yay" }] }
  let(:jrxml) { Rails.root.join("spec", "resources", "original.jrxml").to_s }
  let(:report) { FactoryGirl.create(:report, name: "teste", template: jrxml) }

  describe "#add" do
    it "successfully" do
      params = {
                name: "yay",
                jrxml: "path"
               }

      post :add, params.to_json
      expect(response).to be_success
    end
  end

  describe "#append" do
    it "successfully" do
      params = {
                id: report.id,
                data: collection
               }

      post :append, params.to_json
      expect(response).to be_success
    end
  end

  describe "#generate" do
    it "successfully" do
      params = {
                id: report.id,
               }

      post :generate, params.to_json
      expect(response).to be_success
    end
  end
end
