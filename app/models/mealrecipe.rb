class Mealrecipe < ActiveRecord::Base
  belongs_to :meal
  belongs_to :recipe
end
