class GalleriesController < DashboardsController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    Gallery.transaction do
    @gallery = Gallery.create(gallery_params)
    if @gallery.persisted?
      redirect_to galleries_path, notice: 'Gallery was created'
    end
    end
  end

  def edit
  end

  def update
    if @gallery.update(gallery_params)
      redirect_to @gallery, notice: 'Gallery was updated'
    end
  end

  def destroy
    @gallery.destroy
    redirect_to galleries_path, notice: 'Gallery was destroyed'
  end

  private

    def set_params
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:description, :image)
    end
end
