class LoginController < ApplicationController
  # def new
  # end
  #routes pattern: route controller method
  def create
    # return redirect_to(controller: 'sessions',
    #                    action: 'new') if !params[:user_name] || params[:password].empty?
    # session[:user_name] = params[:user_name]
    # session[:password] = params[:password]
    # redirect_to controller: 'application', action: 'hello'
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      flash[:messages] =  "Logging in #{@user.name}."
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:messages] = "Incorrect username or password"
      redirect_to new_login_path
  end


end

  def destroy
    logout
    redirect_to new_login_path
  end
end
