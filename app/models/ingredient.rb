class Ingredient < ActiveRecord::Base

  has_many :recipeIngredients
  has_many :recipes, through: :recipeIngredients

end
