class Api::V1::AboutController < ApplicationController

  def index
    @about = About.all
    render json: @about
  end

  def show
    @find_about = About.find(params[:id])
    render json: @find_about
  end
end
