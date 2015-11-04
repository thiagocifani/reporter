require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :json

  def status
    render json: { status: "running", pinged_at: Time.zone.now.to_i }
  end
end
