class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|

	    t.string "firstname"
	  	t.string "lastname"
	  	t.string "username"
	  	t.string "email"
	    t.string "password"


      t.timestamps
    end
  end
  def down
  	drop_table :users
  end
end
