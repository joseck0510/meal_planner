require 'rails_helper'

feature 'Recipes' do

  context 'user signed in' do
    scenario 'adding recipes' do
      sign_up
      add_recipe
      expect(page).to have_content 'Recipe(Omelette) successfully created'
      expect(current_path).to eq '/recipes/new'
    end

    scenario 'editing a recipe' do
      sign_up
      add_recipe
      visit '/recipes'
      click_link 'Edit recipe'
      fill_in("Title", with: "Ham Omelette")
      fill_in("recipe[ingredients_attributes][1][name]", with: 'Ham')
      click_button 'Update Recipe'
      expect(page).to have_content 'Ham Omelette'
    end

    scenario 'deleting a recipe' do
      sign_up
      add_recipe
      visit '/recipes'
      click_link 'Delete recipe'
      expect(page).not_to have_content('Omelette')
    end
  end


end
