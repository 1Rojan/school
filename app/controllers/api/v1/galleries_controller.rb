class Api::V1::GalleriesController < ApplicationController

  def index
    @gallery = Gallery.all

  end

  def show
    @find_gallery = Gallery.find(params[:id])

  end
end
