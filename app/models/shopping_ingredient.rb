class ShoppingIngredient < ActiveRecord::Base
  belongs_to :shoppinglist
  belongs_to :ingredient
end
