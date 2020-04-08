class FacilitiesController < DashboardsController

  before_action :set_facility, only: [:show, :edit, :update, :destroy]

  def index
    @facilities = Facility.all
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    if @facility.save
    redirect_to facilities_path, notice: 'Facility was successfully created.'
  end
  end

  def edit
  end

  def update
    @facility.update(facility_params)
    if @facility.update(facility_params)
      redirect_to @facility, notice: 'Facility was created'
    end
  end

  def destroy
    @facility.destroy
    redirect_to @facility, notice: 'Facility was destroyed'
  end

  private

  def set_facility
    @facility = Facility.find(params[:id])
  end

  def facility_params
    params.require(:facility).permit(:name, :description, :image)
  end
end
