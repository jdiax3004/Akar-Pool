class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :cellphone, :email])
  end

  private

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end
end
