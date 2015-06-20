class Employer::JobsController < ApplicationController
  def index
    @jobs = current_user.jobs.all
  end

  def new
    @jobs = current_user.jobs.all
    @job = current_user.jobs.build
  end

  def create
    @new_job = current_user.jobs.build(job_params)
    if @new_job.save
      flash[:notice] = "Job updated!"
      redirect_to :back
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def destroy
    @job = current_user.jobs.find(params[:id])
    if @job.destroy
      flash.alert = 'Model deleted successfully'
      redirect_to :back
    end
  end

  def update
    @job = current_user.jobs.find(params[:id])
    if @job.update_attributes(job_params)
      flash['notice'] = "Update Job"
      @jobs = current_user.jobs.all
      render "index"
    else
      flash['notice'] = "Fail update Job"
      redirect_to :back
    end
  end

  private
  def job_params
    params.require(:job).permit(:title, :salary, :description)
  end

end
