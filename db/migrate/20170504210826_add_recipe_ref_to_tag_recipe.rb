class AddRecipeRefToTagRecipe < ActiveRecord::Migration
  def change
    add_reference :tag_recipes, :recipe_id, index: true, foreign_key: true
  end
end
