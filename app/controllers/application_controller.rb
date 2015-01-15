class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :name, :type , :email, :password, :password_confirmation) }
  end

  def after_sign_in_path_for(resource)
    #edit_user_registration_path
    if current_user.is_a?(Employer)
      puts "Employer Sign In"
      employer_path(current_user)
      #new_employer_job(current_user)
    elsif current_user.class.name == 'Employee'
      puts "Employee Sign In"
      #edit_employee_path(current_user)
    end
    #root_path
  end

end
