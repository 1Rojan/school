class NoticesController < DashboardsController
  before_action :get_notice, only: [:show, :edit, :update, :destroy ]

  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def create
    Notice.transaction do
    @notice = Notice.create(notice_params)
    end
    if @notice.persisted?
      redirect_to notices_path, notice: 'सफलतापूर्वक थपियो |'
    end
  end

  def edit
  end

  def update
    Notice.transaction do
    @notice.update(notice_params)
    end
    if @notice.update!(notice_params)
      redirect_to @notice, notice: 'सफलतापूर्वक सम्पादित गरियो |'
    end
  end

  def destroy
    @notice.destroy
    redirect_to notices_path, notice: 'सफलतापूर्वक मेटाईयो |'
  end

  private
    def get_notice
      @notice = Notice.find(params[:id])
    end

    def notice_params
      params.require(:notice).permit(:title, :description, :published, :image)
    end
end
