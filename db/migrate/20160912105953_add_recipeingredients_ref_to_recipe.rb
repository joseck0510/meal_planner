class AddRecipeingredientsRefToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :recipeingredient, index: true, foreign_key: true
  end
end
