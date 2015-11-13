 require "open-uri"

class GenerateReport
  attr_reader :tempfile, :report, :pages

  def initialize(id)
    @report = Report.find id
    @tempfile = Tempfile.new([@report.name, ".jrxml"],
                             enconding: "ascii-8bit")
    @pages = report.pages
  end

  def render
    report = JasperOnRailsPdf::PdfGenerator.new(jrxml, content).render
    close
    report
  end

  private

  def jrxml
    check_uri
  end

  def content
    pages.inject([]) do |sum, page|
      sum += JSON.parse(page.gsub('=>', ':'))
    end
  end

  def check_uri
    if URI(report.template).scheme
      read_from_source
      tempfile.path
    else
      report.template
    end
  end

  def read_from_source
    content = URI.parse(report.template).read
    File.open(tempfile.path, 'wb') { |f| f.write(content) }
  end

  def close
    tempfile.close
    tempfile.unlink
  end
end
