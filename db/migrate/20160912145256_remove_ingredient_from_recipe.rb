class RemoveIngredientFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :ingredients, :string
  end
end
