require 'spec_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :transaction

describe Job do
  it "collect all jobs" do
    DatabaseCleaner.start
    Job.create(name: "Croton", number: "15-789")
    Job.create(name: "Newtown", number: "15-844")
    Job.all_jobs.should eq [{ name: "Croton", number: "15-789" },
                       { name: "Newtown", number: "15-844" }]
    DatabaseCleaner.clean
  end
end