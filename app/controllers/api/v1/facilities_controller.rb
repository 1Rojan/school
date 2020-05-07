class Api::V1::FacilitiesController < ApplicationController

  def index
    @facilities = Facility.all
    # render json: @facilities
  end

  def show
    @find_facility = Facility.find(params[:id])
    render json: @find_facility
  end


end
