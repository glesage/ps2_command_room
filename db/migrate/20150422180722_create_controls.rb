class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|
      t.string :NC
      t.string :TR
      t.string :VS

      t.integer :map_id

      t.timestamps null: false
    end
  end
end
