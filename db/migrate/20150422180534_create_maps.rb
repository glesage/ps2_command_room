class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :ps2_id
      t.integer :server_id

      t.timestamps null: false
    end
  end
end
