class CreateHexes < ActiveRecord::Migration
  def change
    create_table :hexes do |t|
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
