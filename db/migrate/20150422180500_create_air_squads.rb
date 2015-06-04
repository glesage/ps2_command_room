class CreateAirSquads < ActiveRecord::Migration
  def change
    create_table :air_squads do |t|
      t.integer :platoon
      t.integer :squad

      t.timestamps null: false
    end
  end
end
