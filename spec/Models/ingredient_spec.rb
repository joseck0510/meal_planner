describe Ingredient, type: :model do

  it{ is_expected.to have_many(:recipes).through(:recipeIngredients) }
  it{ is_expected.to have_many(:recipeIngredients) }

end
