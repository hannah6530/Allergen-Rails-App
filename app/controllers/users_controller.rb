class UsersController < ApplicationController
  def index
    @users = User.all
    @recipes = Recipe.all
  end

  def new
    # @current_user = User.new
    @user = User.new
    @recipes = Recipe.all
    @security_questions = SecurityQuestion.all
    # @security_answer = SecurityAnswer.new
  end

  def create
    @security_answer = SecurityAnswer.new
    @user = User.create(user_params)
    # return redirect_to controller: 'users', action: 'new' unless @user.save
    # session[:user_id] = @user.id
    # redirect_to controller: 'welcome', action: 'home'
    # redirect_to user
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to "/security_answers/new"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path

  end
end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @security_answer = SecurityAnswer.all
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user

  end

  def myrecipe
    @user = User.find(params[:id])
  end


  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to "/login/new"
   #  session.delete :user_id
   # redirect_to '/'
  end

  def find_user
    # @user = User.find(params[:user_name])
    # @user = User.all
    @users = User.search(params[:search])
    redirect_to "/security_answers/#{@user.id}/verify"
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :name, :password)
  end
end
