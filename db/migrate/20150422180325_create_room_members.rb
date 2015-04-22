class CreateRoomMembers < ActiveRecord::Migration
  def change
    create_table :room_members do |t|
      t.integer :member_id
      t.integer :room_id

      t.timestamps null: false
    end
  end
end
