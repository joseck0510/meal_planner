class AddRecipeRefToRecipeingredient < ActiveRecord::Migration
  def change
    add_reference :recipeingredients, :recipe, index: true, foreign_key: true
  end
end
