class EmployerController < ApplicationController
  def show
    if current_user.is_a?(Employer)
      @employer = current_user
    end
  end

  def index
  end

  def new
  end

  def destroy
    current_user.destroy
    redirect_to root_path
  end

end
