class AdmissionsController < DashboardsController
  before_action :set_admission, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: 'create'
  layout "application", except:  'index'
  layout "dashboard", only:  [:index, :show, :edit, :update, :destroy]
  # GET /admissions
  # GET /admissions.json
  def index
    @admissions = Admission.all
  end

  # GET /admissions/1
  # GET /admissions/1.json
  def show
  end

  # GET /admissions/new
  def new
    @admission = Admission.new
  end

  # GET /admissions/1/edit
  def edit
  end

  # POST /admissions
  # POST /admissions.json
  def create
    @admission = Admission.new(admission_params)
    respond_to do |format|
      if @admission.save
        format.html { redirect_to root_path, notice: 'सफलतापूर्वक थपियो |' }
        format.json { render :show, status: :created, location: @admission }
      else
        format.html { render new_display_path }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admissions/1
  # PATCH/PUT /admissions/1.json
  def update
    respond_to do |format|
      if @admission.update(admission_params)
        format.html { redirect_to @admission, notice: 'सफलतापूर्वक सम्पादित गरियो |' }
        format.json { render :show, status: :ok, location: @admission }
      else
        format.html { render :edit }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admissions/1
  # DELETE /admissions/1.json
  def destroy
    @admission.destroy
    respond_to do |format|
      format.html { redirect_to admissions_url, notice: 'सफलतापूर्वक मेटाईयो |' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission
      @admission = Admission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admission_params
      params.require(:admission).permit(:name, :dob, :gender, :address, :phone, :email, :father_name, :mother_name, :father_phone, :mother_phone, :admission_for, :image)
    end
end
