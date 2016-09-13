describe Ingredient, type: :model do

  it{ is_expected.to have_many(:recipes).through(:recipeingredients) }
  it{ is_expected.to have_many(:recipeingredients) }

end
