class RecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: %i[show edit update destroy]

  # GET /recipes or /recipes.json
  def index
    @recipes = current_user.recipes.order(:id)
  end

  # GET /recipes/1 or /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
    @recipefoods = Recipefood.where(recipe_id: @recipe.id)
  end

  # GET /recipes/new
  def new
    @recipe = current_user.recipes.build
  end

  # GET /recipes/1/edit
  def edit; end

  # POST /recipes or /recipes.json
  def create
    @recipe = current_user.recipes.build(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully created!' }
        format.json { render :show, status: :created, location: @recipe }
      else
        @errors = @recipe.errors.full_messages
        render.new
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1 or /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to recipe_url(@recipe), notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # Public recipe
  def public
    @totals = {}
    @public_recipes = Recipe.includes([:recipefoods]).where(public: true).order('created_at DESC')
    @public_recipes.includes([:foods]).each do |pub|
      total = 0
      Recipefood.where(recipe_id: pub.id).each do |rec_food|
        total += rec_food.quantity * rec_food.food.price
      end
      @totals[pub.name] = total
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe = current_user.recipes.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
