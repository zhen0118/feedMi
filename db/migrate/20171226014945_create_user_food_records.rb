class CreateUserFoodRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :user_food_records do |t|
    	t.integer :user_id
    	t.integer :food_id
    	t.integer :food_cnt
     	t.timestamps
    end
  end
end
