class ReportBuffer
  attr_reader :jrxml, :name, :collection

  def initialize(name, jrxml)
    @name       = name
    @jrxml      = jrxml
    @collection = []
  end

  def save
    report.update_attributes(template: jrxml, name: name,
                             collection: collection)
    report
  end

  def report
    @report ||= Report.new
  end
end
