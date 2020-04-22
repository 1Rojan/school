class SplashesController < DashboardsController
  before_action :set_splash, only: [:show, :edit, :update, :destroy]

  # GET /splashes
  # GET /splashes.json
  def index
    @splashes = Splash.all
  end

  # GET /splashes/1
  # GET /splashes/1.json
  def show
  end

  # GET /splashes/new
  def new
    @splash = Splash.new
  end

  # GET /splashes/1/edit
  def edit
  end

  # POST /splashes
  # POST /splashes.json
  def create
    @splash = Splash.new(splash_params)

    respond_to do |format|
      if @splash.save
        format.html { redirect_to @splash, notice: 'सफलतापूर्वक थपियो |' }
        format.json { render :show, status: :created, location: @splash }
      else
        format.html { render :new }
        format.json { render json: @splash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /splashes/1
  # PATCH/PUT /splashes/1.json
  def update
    respond_to do |format|
      if @splash.update(splash_params)
        format.html { redirect_to @splash, notice: 'सफलतापूर्वक सम्पादित गरियो |' }
        format.json { render :show, status: :ok, location: @splash }
      else
        format.html { render :edit }
        format.json { render json: @splash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splashes/1
  # DELETE /splashes/1.json
  def destroy
    @splash.destroy
    respond_to do |format|
      format.html { redirect_to splashes_url, notice: 'सफलतापूर्वक मेटाईयो |' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_splash
      @splash = Splash.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def splash_params
      params.require(:splash).permit(:name, :image)
    end
end
