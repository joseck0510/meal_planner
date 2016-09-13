class Recipe < ActiveRecord::Base

  belongs_to :user

  has_many :recipeingredients, dependent: :destroy
  has_many :ingredients, through: :recipeingredients, dependent: :destroy

  accepts_nested_attributes_for :ingredients, allow_destroy: true,
                             reject_if: :all_blank

 def self.search(search)
   where("title ILIKE ? ", "%#{search}%")
 end

end
