class Api::V1::FootersController < ApplicationController

  def index
    @footer = Footer.first
    render json: @footer
  end

end
