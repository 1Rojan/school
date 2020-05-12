class Api::V1::InfoController < ApplicationController

  def index
    @infos = Info.all
  end

  def show
    @info = Info.find(params[:id])
  end
end
