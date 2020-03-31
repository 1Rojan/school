class DashboardsController < ApplicationController

  layouts 'dashboard'

  before_action :authenticate_user!

end
