class Drawing < ActiveRecord::Base
  attr_accessible :number

  has_many :entries, foreign_key: "parentable_id"
  has_many :children, class_name: "Unit", foreign_key: "parentable_id", as: :parentable, through: :entries

  belongs_to :job

  def foo
    arr = []
    self.entries.all.to_a.each do |entry|
      # p Unit.find(entry.child_id)
      arr << Unit.find(entry.child_id)
    end
    arr
  end
end
