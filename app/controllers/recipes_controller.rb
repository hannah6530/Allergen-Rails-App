class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
    @ingredients = Ingredient.all
    @users = User.all
  end

  def new
    @recipe = Recipe.new
    # @ingredients = Ingredient.all
    # @users.User.all
  end

  def create
    # @user = User.new
    # @ingredient = Ingredient.new
    # @recipe = Recipe.create(recipe_params)
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
    @ingredient = @recipe.ingredients
    @user = @recipe.user
    # @user = Recipe.user
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect to recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, @current_user.id)
  end
end
