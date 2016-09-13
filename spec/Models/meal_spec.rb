describe Meal, type: :model do

  it{ is_expected.to have_many(:mealrecipes) }
  it{ is_expected.to have_many(:recipes).through(:mealrecipes) }

end
