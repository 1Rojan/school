class Api::V1::IntroController < ApplicationController

  def index
    @intro = Intro.all
  end

  def show
    @find_intro = Intro.find(params[:id])
  end

end
