class Api::V1::NoticesController < ApplicationController

  def index
    @notices = Notice.all
  end

  def show
    @find_notice = Notice.find(params[:id])
  end

end
