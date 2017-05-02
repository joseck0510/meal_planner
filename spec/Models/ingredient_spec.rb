describe Ingredient, type: :model do

  it{ is_expected.to have_many(:recipes).through(:recipe_ingredients) }
  it{ is_expected.to have_many(:recipe_ingredients) }

end
