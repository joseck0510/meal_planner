class RemoveUserRefFromMeals < ActiveRecord::Migration
  def change
    remove_reference :meals, :user, index: true, foreign_key: true
  end
end
