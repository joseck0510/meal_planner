class CreateShoppingingredients < ActiveRecord::Migration
  def change
    create_table :shoppingingredients do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.references :shoppinglist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
