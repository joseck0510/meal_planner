class RecipesController < ApplicationController

  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times{ @recipe.ingredients.build }
  end

  def edit
    find_recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.save
    flash[:notice] = "#{@recipe.title} recipe successfully created"
    redirect_to recipes_path
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

  def show
    find_recipe
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :instructions,
     ingredients_attributes:[:recipe_id,:_destroy, :recipeingredients_id,
                             :name, :quantity])
  end


end
