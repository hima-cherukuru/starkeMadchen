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
      flash.now[:success] = "Welcome to StarkeMadchen" 
      redirect_to(:back)
    else
      flash.now[:error] = "Invalid Sign Up"
      render 'pages/firstPage'
    end
  end
end
