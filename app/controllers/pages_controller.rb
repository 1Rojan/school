class PagesController < ApplicationController

  def index
    @splashes = Splash.all
    @intro = Intro.find_by_name("विगतदेखि वर्तमान सम्म ")
    @about = @intro.abouts
    @admission = Admission.all
   end

end
