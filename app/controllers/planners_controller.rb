class PlannersController < ApplicationController

  def index
      if params[:search]
        @recipes = Recipe.search(params[:search]).order("created_at DESC")
      end
  end
  
end
