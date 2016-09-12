describe Recipe, type: :model do

  it{ is_expected.to belong_to :user }
  it{ is_expected.to have_many(:recipeIngredients) }
  it{ is_expected.to have_many(:ingredients).through(:recipeIngredients) }

end
