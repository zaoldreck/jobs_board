class Employee::ResumesController < ApplicationController
  def show
    @resume = current_user.resume
  end

  def index
    @resume = current_user.resume
  end

  def new
    @employee = current_user
    @resume = @employee.build_resume
  end

  def create
    @resume = current_user.build_resume(resume_params)
    #@resume.attach_pdf = uploader.retrieve_from_store!(@resume.attach_pdf)
    if @resume.save
      flash[:notice] = "Resume Create!"
      render 'index'
      #redirect_to :back
    end
  end

  def edit
    @employee = current_user
    @resume = current_user.resume
    if @resume.nil?
      render 'create'
    end
  end

  def update
    @resume = current_user.resume.update_attributes(resume_params)
    flash[:notice] = "Resume updated!"
    redirect_to root_path
  end

  private
  def resume_params
    params.require(:resume).permit( :salary, :description, :experience, :education, :phone, :attach_pdf)
  end

end
