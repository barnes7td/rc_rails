class Unit < ActiveRecord::Base
  attr_accessible :name, :unit_type
  
  has_many :entries, foreign_key: "parentable_id"
  has_many :children, class_name: "Unit", foreign_key: "parentable_id", as: :parentable, through: :entries

  belongs_to :parentable, polymorphic: true
end
