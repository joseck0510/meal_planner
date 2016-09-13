class Meal < ActiveRecord::Base

  belongs_to :user

  has_many :mealrecipes
  has_many :recipes, through: :mealrecipes, dependent: :destroy

end
