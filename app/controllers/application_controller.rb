class ApplicationController < ActionController::Base

  layout -> {
    if devise_controller? && current_user
      "devise"
    end
  }
  def after_sign_in_path_for(resource)
    dashboards_path
  end
end
