require_relative "../../app/services/navigator.rb"
require 'spec_helper'

describe Navigator do
  Job.stub!(:jobs).and_return(
    [{ name: "Croton", number: "13-546" },
     { name: "Newtown", number: "13-245" }] 
  )

  it "finds all jobs" do
    Navigator.jobs.should eq [{ name: "Croton", number: "13-546" },
                              { name: "Newtown", number: "13-245" }]
  end
end