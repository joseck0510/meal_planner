class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :meal_slot
      t.string :day_slot

      t.timestamps null: false
    end
  end
end
