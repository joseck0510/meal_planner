class ShoppingIngredient < ActiveRecord::Base
  belongs_to :shoppingList
  belongs_to :ingredient
end
