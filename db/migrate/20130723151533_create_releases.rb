class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :label
      t.references :job

      t.timestamps
    end
  end
end
