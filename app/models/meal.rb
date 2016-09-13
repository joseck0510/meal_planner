class Meal < ActiveRecord::Base

  belongs_to :user

  has_many :mealrecipes
  has_many :recipes, through: :mealrecipes, dependent: :destroy

  accepts_nested_attributes_for :recipes, allow_destroy: true


end
