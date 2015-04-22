class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :room_id
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
