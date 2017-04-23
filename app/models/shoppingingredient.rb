class Shoppingingredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :shoppinglist
end
