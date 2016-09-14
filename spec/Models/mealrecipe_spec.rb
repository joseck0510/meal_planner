describe Mealrecipe, type: :model do

  it { is_expected.to belong_to(:recipe) }
  it { is_expected.to belong_to(:meal) }

end
