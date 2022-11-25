class AddFoodsToRecipefoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipefoods, :food, null: false, foreign_key: {to_table: :foods}
  end
end
