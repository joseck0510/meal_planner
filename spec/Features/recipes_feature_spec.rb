feature 'Recipes' do
  before(:each) do
    sign_up
    add_recipe
  end

  context 'user signed in' do
    scenario 'adding recipes' do
      expect(page).to have_content 'Omelette recipe successfully created'
      expect(current_path).to eq '/recipes'
    end

    scenario 'editing a recipe' do
      visit '/recipes'
      click_link 'Edit recipe'
      fill_in('Title', with: 'Ham Omelette')
      fill_in('recipe[ingredients_attributes][1][name]', with: 'Ham')
      click_button 'Update Recipe'
      expect(page).to have_content 'Ham Omelette'
    end

    scenario 'deleting a recipe' do
      visit '/recipes'
      click_link 'Delete recipe'
      expect(page).not_to have_content('Omelette')
    end

    scenario 'viewing a recipe' do
      click_link 'My Recipes'
      click_link 'Omelette'
      expect(page).to have_content 'Omelette'
      expect(page).to have_content 'Egg'
      expect(page).to have_content '2'
    end
  end
end
