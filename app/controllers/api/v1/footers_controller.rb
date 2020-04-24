class Api::V1::FootersController < ApplicationController

  def index
    @footer = Footer.all
    render json: @footer
  end

  def show
    @find_footer = Footer.find(params[:id])
    render json: @find_footer
  end

end
