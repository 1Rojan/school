class Api::V1::SplashesController < ApplicationController

  def index
    @splashes = Splash.all
  end

  def show
    @find_splash = Splash.find(params[:id])
  end

end
