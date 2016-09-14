def add_recipe(title: 'Omelette', ingredient1:"Eggs", quantity1:"2",
                ingredient2:"cheese",quantity2:"200g" )
  click_link 'Add recipe'
  fill_in 'Title', with: title
  fill_in 'Instructions', with: 'Example cooking instructions'
  fill_in("recipe[ingredients_attributes][0][name]", with: ingredient1 )
  fill_in('recipe[ingredients_attributes][0][quantity]', with: quantity1 )
  fill_in("recipe[ingredients_attributes][1][name]", with: ingredient2 )
  fill_in("recipe[ingredients_attributes][1][quantity]", with: quantity2 )
  click_button 'Create Recipe'
end
