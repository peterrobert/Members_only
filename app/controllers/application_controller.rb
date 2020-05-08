class ApplicationController < ActionController::Base
  before_action :configure_permitted_devise_parameters, if: :devise_controller?

  protected

  def configure_permitted_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :is_member])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :is_member])
  end
end
