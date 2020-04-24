class Api::V1::GalleriesController < ApplicationController

  def index
    @gallery = Gallery.all
    render json: @gallery
  end

  def show
    @find_gallery = Gallery.find(params[:id])
    render json: @find_gallery
  end
end
