class JobsController < ApplicationController

  before_action :find_job, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)

    if @job.save
      redirect_to @job, notice: "Job has been created!"
    else
      render "new", notice: "Job was unable to save post!"
    end
  end

  def edit
  end

  def update
    if @job.update jobs_params
      redirect_to @job, notice: "Updated!"
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def jobs_params
      params.require(:job).permit(:title, :description, :city)
    end

    def find_job
      @job = Job.find(params[:id])
    end

end
