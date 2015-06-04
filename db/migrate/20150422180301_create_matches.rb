class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :end_time

      t.integer :room_id

      t.timestamps null: false
    end
  end
end
