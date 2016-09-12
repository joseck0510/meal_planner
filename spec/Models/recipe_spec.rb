describe Recipe, type: :model do

  it{ is_expected.to belong_to :user }
  it{ is_expected.to have_many(:recipeingredients) }
  it{ is_expected.to have_many(:ingredients).through(:recipeingredients) }

end
