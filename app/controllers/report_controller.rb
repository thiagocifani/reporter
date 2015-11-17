class ReportController < ApplicationController
  respond_to :json

  def add
    req    = JSON.parse(request.body.read)
    report = ReportBuffer.new(req["name".freeze], req["jrxml".freeze]).save

    render json: { id: report.id, success: true }
  end

  def append
    req    = JSON.parse(request.body.read)
    report = AppendBuffer.new(req["id".freeze], req["data".freeze]).add_to_collection

    render json: { id: report.id, success: true }
  end

  def generate
    req     = JSON.parse(request.body.read)
    content = GenerateReport.new(req["id".freeze]).render

    render json: { content: Base64.encode64(content) }
  end
end
