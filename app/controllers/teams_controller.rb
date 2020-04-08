class TeamsController < DashboardsController
  before_action :set_team, only: [:show, :edit, :update, :destroy ]


  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.persisted?
      redirect_to teams_path , notice: 'Team Created'
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)

      redirect_to team_path, notice: 'Team Updated'
    end
  end

  def destroy
    if @team.destroy
      redirect_to teams_path, notice: 'Team Destroyed'
    end

  end

private
  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :designation, :description, :team_category_id, :image)
  end

end
