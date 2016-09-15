class PlannersController < ApplicationController

  def index

  end

  def search
    if params[:search]
      @recipes = Recipe.search(params[:search]).order("created_at DESC").uniq
    end
  end

end
