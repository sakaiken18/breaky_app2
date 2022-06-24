class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

  def after_sign_in_path_for(resource)
    posts_path
  end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
end
