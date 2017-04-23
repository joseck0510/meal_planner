class ShoppingList < ActiveRecord::Base
  belongs_to :user

  has_many :shoppingingredients, dependent: :destroy
  has_many :ingredients, through: :shoppingingredients, dependent: :destroy
end
