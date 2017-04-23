class CreateShoppingIngredients < ActiveRecord::Migration
  def change
    create_table :shopping_ingredients do |t|

      t.timestamps null: false
    end
  end
end
