class Api::V1::TeamCategoriesController < ApplicationController

  def index
    @team_categories = TeamCategory.all
  end

  def show
    @find_team_category = TeamCategory.find(params[:id])
  end
end
