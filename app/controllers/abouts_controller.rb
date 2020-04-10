class AboutsController < DashboardsController
  before_action :set_about, only: [:show, :edit, :update, :destroy]


  def index
    @abouts = About.all
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(about_params)


  end

  def edit
  end

  def update
    @about.update(about_params)
    if @about.update(about_params)
     redirect_to @about, notice: 'About was successfully updated.'
    end
  end

  def destroy
    @about.destroy
     redirect_to abouts_url, notice: 'About was successfully destroyed.'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_about
    @about = About.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def about_params
    params.require(:about).permit(:description, :intro_id)
  end
end
