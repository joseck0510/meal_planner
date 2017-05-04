require 'rails_helper'

describe TagRecipe, type: :model do
  it { is_expected.to belong_to(:recipe) }
  it { is_expected.to belong_to(:tag) }
end
