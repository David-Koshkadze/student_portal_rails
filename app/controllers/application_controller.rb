class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
  end

  def authenticate_admin!
    redirect_to root_path, alert: !user_signed_in? ? 'Please Sign in' : "Access Denied" unless current_user&.admin?
  end
end
