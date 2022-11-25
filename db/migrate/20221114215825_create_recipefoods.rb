class CreateRecipefoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipefoods do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
