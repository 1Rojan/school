class FootersController < DashboardsController
  before_action :set_footer, only: [:show, :edit, :update, :destroy]

  # GET /footers
  # GET /footers.json
  def index
    @footers = Footer.all
  end

  # GET /footers/1
  # GET /footers/1.json
  def show
  end

  # GET /footers/new
  def new
    @footer = Footer.new
  end

  # GET /footers/1/edit
  def edit
  end

  # POST /footers
  # POST /footers.json
  def create
    @footer = Footer.new(footer_params)

    respond_to do |format|
      if @footer.save
        format.html { redirect_to @footer, notice: 'सफलतापूर्वक थपियो |' }
        format.json { render :show, status: :created, location: @footer }
      else
        format.html { render :new }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footers/1
  # PATCH/PUT /footers/1.json
  def update
    respond_to do |format|
      if @footer.update(footer_params)
        format.html { redirect_to @footer, notice: 'सफलतापूर्वक सम्पादित गरियो |' }
        format.json { render :show, status: :ok, location: @footer }
      else
        format.html { render :edit }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footers/1
  # DELETE /footers/1.json
  def destroy
    @footer.destroy
    respond_to do |format|
      format.html { redirect_to footers_url, notice: 'सफलतापूर्वक मेटाईयो |' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footer
      @footer = Footer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footer_params
      params.require(:footer).permit(:description)
    end
end
