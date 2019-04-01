class SignUpController < ApplicationController

def new
  @user = Sign_up.new
end

def create
  @user = Sign_up.create(signup_params)
  redirect_to posts_url
end

def index
end

def signup_params
  params.require(:sign_up).permit(:firstname, :lastname, :username, :email, :password, :password_confirm)
end
end
