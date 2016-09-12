class Recipe < ActiveRecord::Base

  belongs_to :user

  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

end
