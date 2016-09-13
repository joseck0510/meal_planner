def add_recipe(title: 'Omelette', first_ingredient: 'Eggs')
  click_link 'Add recipe'
  fill_in 'Title', with: title
  fill_in 'Instructions', with: 'Example cooking instructions'
  fill_in("recipe[ingredients_attributes][0][name]", with: first_ingredient)
  fill_in('recipe[ingredients_attributes][0][quantity]', with: "2")
  fill_in("recipe[ingredients_attributes][1][name]", with: 'Cheese')
  fill_in("recipe[ingredients_attributes][1][quantity]", with: "200 grams")
  click_button 'Create Recipe'
end
