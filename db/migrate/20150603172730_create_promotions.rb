class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :description
      t.string :image_path
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
