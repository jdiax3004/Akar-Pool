class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :cellphone, :email, :site])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :cellphone, :email, :site, :avatar, :password, :password_confirmation, :current_password])
  end

  private

  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name != "edit"
      "login"
    else
      "application"
    end
  end
end
