class AddMealRefToMealrecipe < ActiveRecord::Migration
  def change
    add_reference :mealrecipes, :meal, index: true, foreign_key: true
  end
end
