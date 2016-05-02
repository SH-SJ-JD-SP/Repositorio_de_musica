class ApplicationController < ActionController::Base

  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def after_sign_in_path_for(resource)
  	if resource.email == "admin@alcompas.com"
      users_path
    else
      root_path
    end
  end

  private
  def user_not_authorized
    flash[:notice] = "Este mensaje no se donde aparecerá"
    redirect_to(request.referrer || root_path)
  end

  protected
  def configure_permitted_parameters
   	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email,:nombres,:apellidos,:apodo,:password,:password_confirmation,:imagenPerfil)}
  end
end
