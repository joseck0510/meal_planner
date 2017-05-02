class AddShoppingListRefToShoppingIngredient < ActiveRecord::Migration
  def change
    add_reference :shopping_ingredients, :shopping_list, index: true, foreign_key: true
  end
end
