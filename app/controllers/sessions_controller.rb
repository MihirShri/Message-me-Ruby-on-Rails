class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome #{user.username}, you have logged in successfully!"
      redirect_to root_path
    else
      flash.now[:error] = "Please verify your login details!!!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have been logged out successfully!"
    redirect_to login_path
  end

end