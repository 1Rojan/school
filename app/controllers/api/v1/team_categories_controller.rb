class Api::V1::TeamCategoriesController < ApplicationController

  def index
    @team_categories = TeamCategory.all
    render json: @team_categories
  end

end
