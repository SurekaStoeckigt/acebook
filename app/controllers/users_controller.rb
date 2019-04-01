class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(signup_params)
    redirect_to posts_url
  end

  def index
  end

  def signup_params
    params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirm)
  end
  end

end
