class ShoppingIngredient < ActiveRecord::Base
  belongs_to :shopping_list
  belongs_to :ingredient
end
