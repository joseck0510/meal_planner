class AddIngredientRefToShoppingIngredient < ActiveRecord::Migration
  def change
    add_reference :shopping_ingredients, :ingredient, index: true, foreign_key: true
  end
end
