require 'rails_helper'

describe ShoppingList, type: :model do

  it { is_expected.to belong_to :user }

  it { is_expected.to have_many(:shoppingIngredients) }
  it { is_expected.to have_many(:ingredients).through(:shoppingingredients) }

end
