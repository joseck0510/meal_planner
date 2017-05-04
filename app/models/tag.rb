class Tag < ActiveRecord::Base
  has_many :recipes, through: :tag_recipes
end
