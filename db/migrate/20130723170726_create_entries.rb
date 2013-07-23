class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :parentable_id
      t.integer :child_id
      t.integer :quantity
      t.integer :ship_loose

      t.timestamps
    end
  end
end
