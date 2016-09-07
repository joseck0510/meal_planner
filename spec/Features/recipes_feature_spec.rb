require 'rails_helper'

feature 'Recipes' do

  context 'user signed in' do
    scenario 'adding recipes' do
      sign_up
      click_link 'Add recipe'
      fill_in 'Title', with: 'Omelette'
      fill_in 'Ingredients', with: '2 eggs, 1/2 cup of cheese, splash of milk'
      fill_in 'Instructions', with: 'Exmaple cooking instructions'
      click_button 'Create Recipe'
      expect(page).to have_content 'Recipe(Omelette) successfully created'
      expect(current_path).to eq '/recipes/new'
    end
  end


end
