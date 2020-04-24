class Api::V1::IntroController < ApplicationController

  def index
    @intro = Intro.all
    render json: @intro
  end

  def show
    @find_intro = Intro.find(params[:id])
    render json: @find_intro
  end

end
