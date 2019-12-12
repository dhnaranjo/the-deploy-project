class StatusController < ApplicationController
  def index
    render json: { status: 'ok good please work' }
  end
end
