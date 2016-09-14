describe Recipe, type: :model do

  it{ is_expected.to belong_to :user }
  
  it{ is_expected.to have_many(:recipeingredients) }
  it{ is_expected.to have_many(:ingredients).through(:recipeingredients) }

  it{ is_expected.to have_many(:mealrecipes) }
  it{ is_expected.to have_many(:meals).through(:mealrecipes) }

end
