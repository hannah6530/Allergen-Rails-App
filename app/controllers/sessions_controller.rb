class SessionsController < ApplicationController
  # def new
  # end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:user_name] || params[:password].empty?
    session[:user_name] = params[:user_name]
    session[:password] = params[:password]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :user_name
    redirect_to controller: 'application', action: 'hello'
  end
end
