class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update

  end

  # def destroy
  #   ingredient = Ingredient.find(params[:id])
  #   ingredient.destroy
  #   redirect_to "/"
  # end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :recipe_id, :allergy_count)
  end
end
