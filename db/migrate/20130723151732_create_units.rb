class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :unit_type
      t.integer :parentable_id
      t.string :parentable_type

      t.timestamps
    end
  end
end
