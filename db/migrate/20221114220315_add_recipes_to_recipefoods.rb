class AddRecipesToRecipefoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipefoods, :recipe, null: false, foreign_key: {to_table: :recipes}
  end
end
