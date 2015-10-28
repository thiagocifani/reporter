class GenerateReport
  def initialize(id)
    @report = Report.find id
  end

  def render
    JasperOnRailsPdf::PdfGenerator.new(jrxml, content).render
  end

  def jrxml
    @report.template
  end

  def content
    @report.collection
  end
end
