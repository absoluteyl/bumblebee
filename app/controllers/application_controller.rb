class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    extra_params = [
      :first_name, :last_name,
      :premium, :admin
    ]
    devise_parameter_sanitizer.permit(:sign_up, keys: extra_params)
  end
end
