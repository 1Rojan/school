class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @find_team = Team.find(params[:id])
  end
end
