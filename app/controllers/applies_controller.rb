class AppliesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @job = Job.find(params[:job])
    @applies = Resume.find(params[:resume]).applies.create(job: @job, status: "Pending")
  end

  def destroy
    @job = Job.find(params[:job])
    @applies = Resume.find(params[:resume]).applies.where(job: @job)
    @applies.destroy_all
    flash[:notice] = "Removed"
    redirect_to root_path
  end

  def edit
     @employer = current_user.is_a?(Employer)
    if @employer.nil?
      render 'index'
    end

    @apply = Apply.find(params[:id]);

    if @apply
      puts "Params : "+@apply.id.to_s

      @job = Job.find(params[:job_id])
      if @job.applies.any?
        @applies = @job.applies
      end
    end
  end

  def update
    @apply = Apply.find(params[:id]);
    @apply.update_attributes(status: params[:status])
    puts " Status Update : "+params[:status].to_s
    #notice[:notice] = params[:status]
    redirect_to(:back)

  end
end
