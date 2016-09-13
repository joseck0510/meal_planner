class AddIngredientRefToRecipeingredient < ActiveRecord::Migration
  def change
    add_reference :recipeingredients, :ingredient, index: true, foreign_key: true
  end
end
