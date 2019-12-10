class StatusController < ApplicationController
  def index
    render json: { status: 'ok good' }
  end
end
