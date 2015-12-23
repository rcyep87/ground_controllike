class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller? #http://stackoverflow.com/questions/29710717/undefined-local-variable-or-method-resource-class-in-devise

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :email << :password
  end

  def after_sign_in_path_for(current_user)
    "/dashboard"
  end
end
