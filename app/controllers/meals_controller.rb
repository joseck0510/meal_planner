class MealsController < ApplicationController

  def new
    @meal = Meal.new
    @meal.recipes.build
  end

  def create
     @meal = Meal.new(meal_params)
     @meal.user = current_user
     @meal.save
     flash[:notice] = "Meal(#{@meal.day_slot},#{@meal.meal_slot}) successfully added"
     redirect_to root_path
  end

  private

  def meal_params
    params.require(:meal).permit(:day_slot, :meal_slot, recipes_attributes:[:recipe_id])
  end
  # def meal_params
  #   params.require(:recipe).permit(:title, :instructions,
  #    ingredients_attributes:[:recipe_id,:_destroy, :recipeingredients_id, :name, :quantity])
  # end
end
