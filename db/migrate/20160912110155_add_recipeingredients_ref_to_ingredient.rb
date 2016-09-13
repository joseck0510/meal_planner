class AddRecipeingredientsRefToIngredient < ActiveRecord::Migration
  def change
    add_reference :ingredients, :recipeingredient, index: true, foreign_key: true
  end
end
