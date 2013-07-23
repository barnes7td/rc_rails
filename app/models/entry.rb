class Entry < ActiveRecord::Base
  attr_accessible :child_id, :parentable_id, :quantity, :ship_loose
  belongs_to :parentable, polymorphic: true
  belongs_to :child
end
