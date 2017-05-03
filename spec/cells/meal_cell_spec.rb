describe MealCell, type: :cell do
  subject do
    cell(:meal, Meal.new(meal_slot: 'Morning',
                         day_slot: 'Monday',
                         user_id: 1))
  end
  it { expect(subject).to have_content 'Meal#show' }
end
