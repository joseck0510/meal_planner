feature 'meals' do
  context 'creating meals' do
    before { sign_up }
    before { add_recipe }

    scenario 'a user can create a meal' do
      click_link 'Add a meal'
      select 'Monday'
      select 'Evening'
      select 'Omelette'
      click_button 'Create Meal'
      expect(page).to have_content 'Monday'
      expect(page).to have_content 'Evening'
      expect(current_path).to eq '/'
    end
  end
end
