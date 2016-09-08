class RecipesController < ApplicationController

  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    find_recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.save
    flash[:notice] = "Recipe(#{@recipe.title}) successfully created"
    redirect_to new_recipe_path
  end

  def update
    find_recipe
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end

  def destroy
    find_recipe
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :instructions)
  end


end
