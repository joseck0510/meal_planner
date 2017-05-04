class CreateTagRecipes < ActiveRecord::Migration
  def change
    create_table :tag_recipes do |t|

      t.timestamps null: false
    end
  end
end
