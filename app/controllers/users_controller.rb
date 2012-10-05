class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash.now[:success] = "Welcome to StarkeMadchen" 
      redirect_to_root_url
    else
      flash.now[:error] = "Invalid Sign Up"
      redirect_to_root_url
    end
  end
end
