class EmployeeController < ApplicationController
  def show
    @employee = current_user
    if @employee.resume
      @resume = @employee.resume
    end
  end

  def new
  end

  def create
  end

  private
  def resume_params
    params.require(:employee).permit(resume: [:salary, :description, :experience, :education, :phone])
  end
end