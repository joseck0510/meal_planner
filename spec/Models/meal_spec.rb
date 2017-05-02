describe Meal, type: :model do

  it{ is_expected.to have_many(:meal_recipes) }
  it{ is_expected.to have_many(:recipes).through(:meal_recipes) }

end
