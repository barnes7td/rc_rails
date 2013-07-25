require 'spec_format'
require_relative "../../app/services/navigator.rb"


describe Navigator do
  before {class Job; end}
  
  it "finds all jobs" do
    Job.stub(:all_jobs).and_return(
      [{ name: "Croton", number: "13-546" },
       { name: "Newtown", number: "13-245" }] 
    )
    Navigator.jobs.should eq([{ name: "Croton", number: "13-546" },
                              { name: "Newtown", number: "13-245" }])
  end

  it 

end