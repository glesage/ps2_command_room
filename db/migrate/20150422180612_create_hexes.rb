class CreateHexes < ActiveRecord::Migration
  def change
    create_table :hexes do |t|
      t.integer :facility_id
      t.integer :position_id
      t.integer :type

      t.timestamps null: false
    end
  end
end
