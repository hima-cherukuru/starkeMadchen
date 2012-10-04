class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user 
    else
      @user = User.new
      flash.now[:error] = "Invalid Username/password"
      render 'pages/firstPage'
    end
  end
  
  def destroy
    
  end
  
end
