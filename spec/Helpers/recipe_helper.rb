def add_recipe(recipe: 'Omelette')
  click_link 'Add recipe'
  fill_in 'Title', with: recipe
  fill_in 'Instructions', with: 'Example cooking instructions'
  click_link 'Add ingredient'
  fill_in("recipe[ingredients_attributes][0][Name]", with: 'Egg')
  fill_in('recipe[ingredients_attributes][0][quantity]', with: "2")
  click_link 'Add ingredient'
  fill_in("recipe[ingredients_attributes][1][Name]", with: 'Cheese')
  fill_in("recipe[ingredients_attributes][1][quantity]", with: "200 grams")
  click_button 'Create Recipe'
end
