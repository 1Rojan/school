class Api::V1::AboutController < ApplicationController

  def index
    @about = About.all
  end

  def show
    @find_about = About.find(params[:id])
  end
end
