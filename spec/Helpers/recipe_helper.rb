def add_recipe(recipe: 'Omelette')
  click_link 'Add recipe'
  fill_in 'Title', with: recipe
  fill_in 'Ingredients', with: '2 eggs, 1/2 cup of cheese, splash of milk'
  fill_in 'Instructions', with: 'Exmaple cooking instructions'
  click_button 'Create Recipe'
end
