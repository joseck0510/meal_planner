class Recipe < ActiveRecord::Base

  belongs_to :user
  belongs_to :meal

  has_many :recipeingredients, dependent: :destroy
  has_many :ingredients, through: :recipeingredients, dependent: :destroy

  has_many :mealrecipes, dependent: :destroy
  has_many :meals, through: :mealrecipes, dependent: :destroy

  accepts_nested_attributes_for :ingredients, allow_destroy: true,
                             reject_if: :all_blank

  accepts_nested_attributes_for :mealrecipes, allow_destroy: true

 def self.search(search)
   joins(:ingredients)
    .where("title ILIKE ? OR ingredients.name ILIKE ? ", "%#{search}%", "%#{search}%")
 end

end
