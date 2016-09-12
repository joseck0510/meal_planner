def add_recipe(recipe: 'Omelette')
  click_link 'Add recipe'
  fill_in 'Title', with: recipe
  fill_in 'Instructions', with: 'Example cooking instructions'
  fill_in("recipe[ingredients_attributes][0][name]", with: 'Egg')
  fill_in('recipe[ingredients_attributes][0][quantity]', with: "2")
  fill_in("recipe[ingredients_attributes][1][name]", with: 'Cheese')
  fill_in("recipe[ingredients_attributes][1][quantity]", with: "200 grams")
  click_button 'Create Recipe'
end
