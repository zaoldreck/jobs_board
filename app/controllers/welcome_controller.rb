class WelcomeController < ApplicationController

  def index
    if user_signed_in? && current_user.is_a?(Employee)
      @employee = current_user
    elsif user_signed_in? && current_user.is_a?(Employer)
      @employer = current_user
    end

    @jobs = Job.all
    if current_user.is_a?(Employee) && current_user.resume
      @resume = current_user.resume
    end
  end

end
