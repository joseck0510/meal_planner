class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    flash[:notice] = "Recipe(#{@recipe.title}) successfully created"
    redirect_to new_recipe_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :instructions)
  end


end
