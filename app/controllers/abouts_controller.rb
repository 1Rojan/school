class AboutsController < DashboardsController
  before_action :set_about, only: [:show, :edit, :update, :destroy]


  def index
    @abouts = About.all
  end

  def show

  end
  def new
    @about = About.new
  end

  def create
    @about = About.new(about_params)
    if @about.save
      redirect_to abouts_path, notice: 'सफलतापूर्वक थपियो |'
    else
      render :create
    end
  end

  def edit
  end

  def update
    if @about.update(about_params)
      redirect_to @about, notice: 'सफलतापूर्वक सम्पादित गरियो |'
    else
      format.html { render :edit }
    end
  end

  def destroy
    @about.destroy
     redirect_to abouts_url, notice: 'सफलतापूर्वक मेटाईयो |'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_about
    @about = About.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def about_params
    params.require(:about).permit(:title, :description, :intro_id, :image)
  end
end
