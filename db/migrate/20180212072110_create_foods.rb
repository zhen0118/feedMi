class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :food_origin
      t.string :food_type
      t.integer :food_rating

      t.timestamps
    end
  end
end
