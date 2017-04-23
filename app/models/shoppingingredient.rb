class Shoppingingredient < ActiveRecord::Base
  belongs_to :ingredient_id
  belongs_to :shoppinglist_id
end
