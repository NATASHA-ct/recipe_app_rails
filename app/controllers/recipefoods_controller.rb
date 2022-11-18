class RecipefoodsController < ApplicationController
  before_action :set_recipefood, only: %i[show edit update destroy]
 def index
  @recipefoods = Recipefood.all
 end
  # GET /recipefoods/new
  def new
    # @recipefoods = Recipefood.new
    # @recipe = Recipe.find_by(id:params[:recipe_id])
    # @foods = current_user.foods
    # @food_items = []
    # @foods.each do |food|
    #   @food_items << [food.name, food.id]

    # @recipefood = Recipefood.new
    # @recipe = Recipe.find(params[:recipe_id])
    # @foods = current_user.foods

     @foods = current_user.foods
    @food_items = []
    @foods.each do |food|
      @food_items << [food.name, food.id]
    end
    @recipe = current_user.recipes.find(params[:recipe_id])

    end
  
  
 
  # POST /recipefoods or /recipefoods.json
  def create
    @recipe =  current_user.recipes.find_by(id:params[:recipe_id])
    @recipefood = @recipe.recipefoods.new(recipefood_params)
 
      if @recipefood.save
        redirect_to recipe_path(@recipe)
      else
        render :new, status: 'Error occured with Recipe Food!'
      end
    end
  

  # DELETE /recipefoods/1 or /recipefoods/1.json
  def destroy
    @recipe = current_user.recipes.find(params[:recipe_id])
    @recipefood.destroy

    respond_to do |format|
      format.html { redirect_to recipefoods_url, notice: 'Food ingredient was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def recipefood_params
    params.require(:recipefood).permit(:quantity, :food_id)
  end
end
