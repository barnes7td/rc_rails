class JobNavigator

  def self.all_jobs
    Job.all
  end

  def self.create_job(params)
    Job.create(name: params[:name], number: params[:number])
  end

  def self.find_job(params)
    Job.find(params[:id])
  end

  def self.find_release(params)
    Release.find(params[:id])
  end

end
