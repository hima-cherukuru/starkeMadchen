class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      render 'pages/firstPage' 
    else
      @user = User.new
      flash.now[:error] = "Invalid Username/password"
      render 'pages/firstPage'
    end
  end
  
  def destroy
    sign_out
    redirect_to main_app.root_url
  end
  
end
