class ReportBuffer
  attr_reader :jrxml, :name, :collection

  def initialize(name, jrxml)
    @name       = name
    @jrxml      = jrxml
    @collection = []
  end

  def save
    report.template   = jrxml_to_file
    report.name       = name
    report.collection = collection
    report.save
    report
  end

  def jrxml_to_file
    if name
      content = Base64.decode64(jrxml).force_encoding('UTF-8')
      filename = [Rails.root, "#{name}.jrxml"].join('/')
      File.open(filename, 'w') { |f| f.write(content) }
      filename
    end
  end

  def report
    @report ||= Report.new
  end
end
