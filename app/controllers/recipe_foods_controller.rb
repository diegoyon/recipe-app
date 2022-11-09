class RecipeFoodsController < ApplicationController
  def new
    @recipe_food = RecipeFood.new
  end

  def create
    # @recipe = Recipe.find(params[:id])
    @recipe_food = RecipeFood.new(recipe_food_params)
    respond_to do |format|
      if @recipe_food.save
        format.html { redirect_to recipe_foods_url(@recipe_food), notice: 'RecipeFood was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  private


  # Only allow a list of trusted parameters through.
  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :recipe_id, :food_id)
  end
end
