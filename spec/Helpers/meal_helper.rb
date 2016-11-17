def add_meal(day_slot: 'Monday', meal_slot: 'Evening', title: 'Omelette')
  click_link title
  click_link 'Add meal'
  select day_slot
  select meal_slot
  select title
  click_button 'Create Meal'
end
