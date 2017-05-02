class Meal < ActiveRecord::Base

  belongs_to :user

  has_many :meal_recipes
  has_many :recipes, through: :meal_recipes, dependent: :destroy

  accepts_nested_attributes_for :meal_recipes, allow_destroy: true


end
