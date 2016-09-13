class RemoveRecipeingredientIdFromRecipe < ActiveRecord::Migration
  def change
    remove_reference :recipes, :recipeingredient, index: true, foreign_key: true
  end
end
