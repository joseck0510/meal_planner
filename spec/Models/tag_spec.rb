require 'rails_helper'

describe Tag, type: :model do
  it { is_expected.to have_many(:recipes).through(:tag_recipes) }
  it { is_expected.to have_many(:tag_recipes) }
end
