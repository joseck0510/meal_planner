class ShoppingList < ActiveRecord::Base
  belongs_to :user

  has_many :shopping_ingredients, dependent: :destroy
  has_many :ingredients, through: :shopping_ingredients, dependent: :destroy
end
