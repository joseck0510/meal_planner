describe ShoppingIngredient, type: :model do

  it{ is_expected.to belong_to(:shopping_list) }
  it{ is_expected.to belong_to(:ingredient) }

end
