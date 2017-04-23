class CreateShoppingingredients < ActiveRecord::Migration
  def change
    create_table :shoppingingredients do |t|
      t.references :ingredient_id, index: true, foreign_key: true
      t.references :shoppinglist_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
