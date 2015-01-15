class UsersController < ApplicationController
  def new
    @user = User.new(user_param)
    @user.save
    redirect_to @user, notice: 'New'
  end

  def update
    @user.update(user_param)
    redirect_to @user, notice: 'Update'
  end

  def edit
    #if current_user.class.name == 'Employer'
    #  redirect_to new_employer_job_path(current_user)
    #elsif current_user.class.name == 'Employee'
    #  redirect_to new_employee_resume_path(current_user)
    #end
  end

  private
  def user_param
    params.require( :user ).permit( :name , :type)
  end
end
