class ShoppingListController < ApplicationController
 def index
    @shopping_lists = Food.find_by_sql(
      "SELECT foods.name, foods.price, recipe_foods.quantity as quantity, foods.measurement_unit
      FROM foods INNER JOIN recipe_foods ON foods.id = recipe_foods.food_id
      WHERE foods.user_id = #{current_user.id}"
    )
    @total_cost = 0
    @shopping_lists.each do |food|
      @total_cost += food.price * food.quantity
    end
  end
end
