class Api::V1::GalleriesController < ApplicationController

  def index
    @gallery = Gallery.all
    render json: @gallery
  end
end
