

feature 'search' do
  scenario 'by recipe titles' do
    sign_up(email: 'test23@test.com')
    add_recipe
    add_recipe(title: "Pasta", ingredient1: 'pasta')
    visit '/'
    fill_in 'search', with: 'Omelette'
    click_button 'Search'
    expect(page).to have_content('Omelette')
    expect(page).not_to have_content('Pasta')
  end

  scenario 'by ingredients' do
    sign_up
    add_recipe
    add_recipe(title: "Pasta", ingredient1: 'pasta')
    visit '/'
    fill_in 'search', with: 'egg'
    click_button 'Search'
    expect(page).to have_content('Omelette')
    expect(page).not_to have_content('Pasta')
  end

  context 'result is clicked' do
    scenario 'show recipe' do
      sign_up
      add_recipe
      add_recipe(title: "Pasta", ingredient1: 'pasta')
      visit '/'
      fill_in 'search', with: 'egg'
      click_button 'Search'
      click_link 'Omelette'
      expect(page).to have_content('Omelette')
      expect(page).to have_content('Eggs')
    end
  end
end
