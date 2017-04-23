describe Shoppingingredient, type: :model do

  it{ is_expected.to belong_to(:shoppingList) }
  it{ is_expected.to belong_to(:ingredient) }

end
