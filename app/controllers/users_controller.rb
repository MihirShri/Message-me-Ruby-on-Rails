class UsersController < ApplicationController
  before_action :logged_in_redirect

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You have successfully signed up! Please login to continue."
      redirect_to login_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end