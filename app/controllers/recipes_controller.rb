class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # @ingredients = Ingredient.all
    @users = User.all
    # @current_user = User

  end

  def new
    # @ingredients = Ingredient.all
    @users = User.all
    # @user = User.find(params[:id])
    # @ingredients = Ingredient.all
    @recipe = Recipe.new
    # @ingredients = Ingredient.all
    # @users.User.all
    @current_user = User.find(session[:user_id])
    end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.valid?
    redirect_to @recipe
  else
    flash[:errors] = @recipe.errors.full_messages
    redirect_to new_recipe_path
  end
end

    # redirect_to @recipe


  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
    # @recipe.food_photo.attach(params[:food_photo])
  end

  def show
    @recipe = Recipe.find(params[:id])

    # @current_user = @recipe.current_user
    # @current_user = @recipe.current_user
    # @ingredient = @recipe.ingredients
    # @user = @recipe.user
    # @user = Recipe.user

  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to recipe
  end

  private

  def recipe_params
    # params.require(:recipe).permit(:name, :ingredients, @current_user.id)
    params.require(:recipe).permit(:name, :ingredients, :user_id, :food_photo)
  end
end
