class UsersController < ApplicationController
  def index
    @users = User.all
    @recipes = Recipe.all
  end

  def new
    @user = User.new
    @recipes = Recipe.all
  end

  def create
    @user = User.create(user_params)
    # return redirect_to controller: 'users', action: 'new' unless @user.save
    # session[:user_id] = @user.id
    # redirect_to controller: 'welcome', action: 'home'
    # redirect_to user
    if @user.valid?
      redirect_to @user
    else
      redirect_to new_user_path
  end
end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    # user = User.find(params[:id])
    # user.destroy
    # redirect_to users_path
   #  session.delete :user_id
   #
   # redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :name, :password)
  end
end
