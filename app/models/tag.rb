class Tag < ActiveRecord::Base
  has_many :recipes, through: :tag_recipes
  has_many :tag_recipes
end
