class CreateFood < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|

    	t.string :food_name
	    t.string :food_type
	    t.integer :food_id
	    t.integer :food_ratings
		t.timestamps
    end
  end
end
