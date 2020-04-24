class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render json: @teams
  end

  def show
    @find_team = Team.find(params[:id])
    render json: @find_team
  end
end
