class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
    @ingredient = Ingredient.all
  end

  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredient = Recipe.ingredient
    # @user = Recipe.user
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect to recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id)
  end
end
