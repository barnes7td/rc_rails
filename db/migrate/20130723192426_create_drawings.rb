class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :number
      t.references :release

      t.timestamps
    end
  end
end
