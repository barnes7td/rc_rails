class Release < ActiveRecord::Base
  attr_accessible :label, :entries

  has_many :drawings

  belongs_to :job

  
end
