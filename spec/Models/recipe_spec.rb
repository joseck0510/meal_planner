describe Recipe, type: :model do

  it{ is_expected.to belong_to :user }

  it{ is_expected.to have_many(:recipe_ingredients) }
  it{ is_expected.to have_many(:ingredients).through(:recipe_ingredients) }

  it{ is_expected.to have_many(:mealrecipes) }
  it{ is_expected.to have_many(:meals).through(:mealrecipes) }

end
