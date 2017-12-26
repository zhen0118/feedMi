class CreateUserRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_ratings do |t|
      t.integer :user_id
      t.string :food_type
      t.integer :user_rating
      t.timestamps
    end
  end
end
