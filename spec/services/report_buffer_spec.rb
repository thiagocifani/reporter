require "rails_helper"

describe ReportBuffer do
  let(:jrxml) { Rails.root.join("spec", "resources", "original.jrxml").to_s }
  subject { ReportBuffer.new("teste", jrxml) }

  context "create new report" do
    it "#save" do
      expect { subject.save }.to change{Report.count}.from(0).to(1)
    end
  end
end
