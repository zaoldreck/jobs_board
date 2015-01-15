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

end
