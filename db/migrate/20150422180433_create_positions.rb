class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :x
      t.integer :y

      t.integer :hex_id
      t.integer :air_squad_id
      t.integer :ground_squad_id

      t.timestamps null: false
    end
  end
end
