class RenameMealsrecipeToMealsRecipe < ActiveRecord::Migration
  def self.up
    rename_table :mealrecipes, :meal_recipes
  end

  def self.down
    rename_table :meal_recipes, :mealrecipes
  end
end
