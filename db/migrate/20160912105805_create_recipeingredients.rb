class CreateRecipeingredients < ActiveRecord::Migration
  def change
    create_table :recipeingredients do |t|

      t.timestamps null: false
    end
  end
end
