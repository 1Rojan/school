class Api::V1::NoticesController < ApplicationController

  def index
    @notices = Notice.all
    render json: @notices
  end

  def show
    @find_notice = Facility.find(params[:id])
    render json: @find_notice
  end

end
