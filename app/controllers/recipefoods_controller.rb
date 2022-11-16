class RecipefoodsController < ApplicationController
  before_action :set_recipefood, only: %i[show edit update destroy]

 
  # GET /recipefoods/new
  def new
    @recipefood = Recipefood.new
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.includes(:user).where(user: current_user)
  end

 
  # POST /recipefoods or /recipefoods.json
  def create
    @recipefood = Recipefood.new(recipefood_params)

    respond_to do |format|
      if @recipefood.save
        format.html { redirect_to recipefood_url(@recipefood), notice: 'Ingredient was successfully added.' }
        format.json { render :show, status: :created, location: @recipefood }
      else
        format.html { render :new, status: :unprocessable_entity ,alert: 'Ingredient was not added!' }
        format.json { render json: @recipefood.errors, status: :unprocessable_entity }
      end
    end
  end

  
  # DELETE /recipefoods/1 or /recipefoods/1.json
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipefood.destroy

    respond_to do |format|
      format.html { redirect_to recipefoods_url, notice: 'Ingredient was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def recipefood_params
    params.require(:recipefood).permit(:quantity)
  end
end
