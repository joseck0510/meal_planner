class CreateMealrecipes < ActiveRecord::Migration
  def change
    create_table :mealrecipes do |t|

      t.timestamps null: false
    end
  end
end
