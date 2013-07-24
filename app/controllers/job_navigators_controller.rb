class JobNavigatorsController < ApplicationController
  def index
    @jobs = JobNavigator.all_jobs
  end

  def new
    @job = Job.new
  end

  def create_job
    JobNavigator.create_job(params)
    redirect_to :root
  end

  def show_job
    @job = JobNavigator.find_job(params)
  end

end
