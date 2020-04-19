class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_host
  before_action :set_parents

  def set_host
    Rails.application.routes.default_url_options[:host] = request.host_with_port
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end
  
  protected

  def configure_permitted_parameters
    added_attrs = [ :name, :birthday, :phone_number, :email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
   end 
    
end
