class AddRecipeRefToMealrecipe < ActiveRecord::Migration
  def change
    add_reference :mealrecipes, :recipe, index: true, foreign_key: true
  end
end
