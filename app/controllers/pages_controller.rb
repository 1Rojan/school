class PagesController < ApplicationController

  def index
    @splashes = Splash.all
  end

end
