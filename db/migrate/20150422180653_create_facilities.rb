class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.integer :faction
      t.integer :map_id
      t.string :name
      t.integer :position_id
      t.integer :ps2_id
      t.string :type_name
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
