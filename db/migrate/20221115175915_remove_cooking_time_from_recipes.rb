class RemoveCookingTimeFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :cooking_time, :time
  end
end
