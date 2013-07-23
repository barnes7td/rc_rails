class Job < ActiveRecord::Base
  attr_accessible :name, :number, :releases
  has_many :releases
end
