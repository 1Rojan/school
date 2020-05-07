class Api::V1::FacilitiesController < ApplicationController

  def index
    @facilities = Facility.all
  end

  def show
    @find_facility = Facility.find(params[:id])
  end


end
