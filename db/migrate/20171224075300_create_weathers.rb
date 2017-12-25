class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.string :weather_condition
      t.integer :temperature
      t.string :food_type
      t.integer :ratings

      t.timestamps
    end
  end
end
