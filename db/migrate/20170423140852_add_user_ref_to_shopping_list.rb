class AddUserRefToShoppingList < ActiveRecord::Migration
  def change
    add_reference :shopping_lists, :user, index: true, foreign_key: true
  end
end
