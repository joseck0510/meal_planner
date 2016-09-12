class Recipe < ActiveRecord::Base

  belongs_to :user
  
  has_many :recipeIngredients
  has_many :ingredients, through: :recipeIngredients

end
