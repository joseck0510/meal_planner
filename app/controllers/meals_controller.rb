class MealsController < ApplicationController

  def new
    @meal = Meal.new
    @meal.mealrecipes.build
  end

  def create
     @meal = Meal.new(meal_params)
     @meal.user = current_user
     @meal.save
     flash[:notice] = "(#{@meal.day_slot},#{@meal.meal_slot}) meal successfully added"
     redirect_to root_path
  end

  private

  def meal_params
    params.require(:meal).permit(:day_slot, :meal_slot,
    mealrecipes_attributes:[:recipe_id, :meal_id])
  end
end
