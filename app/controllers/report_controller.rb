class ReportController < ApplicationController
  respond_to :json

  def add
    req    = JSON.parse(request.body.read).symbolize_keys
    report = ReportBuffer.new(req[:name], req[:jrxml]).save

    render json: { id: report.id, success: true }
  end

  def append
    req    = JSON.parse(request.body.read).symbolize_keys
    report = AppendBuffer.new(req[:id], req[:data]).add_to_collection

    render json: { id: report.id, success: true }
  end

  def generate
    req     = JSON.parse(request.body.read).symbolize_keys
    content = GenerateReport.new(req[:id]).render

    render json: { content: Base64.encode64(content) }
  end
end
