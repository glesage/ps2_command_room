class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :name

      t.integer :server_id

      t.timestamps null: false
    end
  end
end
