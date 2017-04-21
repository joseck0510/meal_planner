describe MealCell, type: :cell do
  subject { cell(:meal, Meal.new(meal_slot:"Morning", day_slot: "Monday", user_id: 1)) }

  it { expect(subject).to have_content "Meal#show" }

  # t.string   "meal_slot"
  # t.string   "day_slot"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.integer  "user_id"
end
