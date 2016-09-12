class Recipe < ActiveRecord::Base

  belongs_to :user

  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

  accepts_nested_attributes_for :ingredients, allow_destroy: true,
                             reject_if: :all_blank
end
