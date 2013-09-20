class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    session[:user_id] 
    redirect_to home_path 
  end
  
  def auth_hash
    request.env['omniauth.auth']
  end
end
