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
      redirect_to notices_path, notice: 'Notice was created'
    end
  end

  def edit
  end

  def update
    Notice.transaction do
    @notice.update(notice_params)
    end
    if @notice.update!(notice_params)
      redirect_to @notice, notice: 'Notice was updated'
    end
  end

  def destroy
    @notice.destroy
    redirect_to notices_path, notice: 'Notice was destroyed'
  end

  private
    def get_notice
      @notice = Notice.find(params[:id])
    end

    def notice_params
      params.require(:notice).permit(:title, :description, :published)
    end
end
