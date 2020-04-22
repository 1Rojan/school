class TeamCategoriesController < DashboardsController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = TeamCategory.all
  end

  def show

  end

  def new
    @category = TeamCategory.new
  end

  def create
    TeamCategory.transaction do
      @category = TeamCategory.create(category_params)
    end
    if @category.persisted?
      redirect_to team_categories_path, notice: 'सफलतापूर्वक थपियो |'
    end

  end

  def edit

  end

  def update
    TeamCategory.transaction do
      @category.update!(category_params)
    end

    if @category.update(category_params)
      redirect_to team_category_path, notice: 'सफलतापूर्वक सम्पादित गरियो |'
    end

  end

  def destroy
    if @category.destroy
      redirect_to team_categories_path, notice: 'सफलतापूर्वक मेटाईयो |'
    end

  end


private

  def set_category
    @category = TeamCategory.find(params[:id])
  end

  def category_params
    params.require(:team_category).permit(:name)
  end

end
