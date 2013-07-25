class Job < ActiveRecord::Base
  attr_accessible :name, :number, :releases
  has_many :releases

  def self.all_jobs
    arr = []
    self.all.each do |j|
      arr << {name: j.name, number: j.number}
    end
    arr
  end
end
