class RemoveRecipeingredientIdFromIngredient < ActiveRecord::Migration
  def change
    remove_reference :ingredients, :recipeingredient, index: true, foreign_key: true
  end
end
