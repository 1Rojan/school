class Api::V1::TeamCategoriesController < ApplicationController

  def index
    @team_categories = TeamCategory.all
    render json: @team_categories
  end

  def show
    @find_team_category = TeamCategory.find(params[:id])
    render json: @find_team_category
  end
end
