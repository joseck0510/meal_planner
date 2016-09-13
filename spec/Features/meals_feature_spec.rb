feature 'meals' do
  context 'creating meals' do
    before { sign_up }

    scenario 'a user can create a meal' do
      click_link 'Add a meal'
      select 'Monday'
      select 'Evening'
      select 'Spaghetti'
      click_button 'Create Meal'
      expect(page).to have_content 'Monday'
      expect(page).to have_content 'Evening'
      expect(page).to have_content 'Spaghetti'
      expect(current_path).to eq '/'
    end
  end
end
