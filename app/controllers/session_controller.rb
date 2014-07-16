class SessionController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.username
      @message = "Login OK"
    else
      @message = "User Not Found or Wrong Password"
    end
  end

  def destroy
    unless session[:user_id].nil?
      session[:user_id] = nil
      @message = "Logout OK"
    else
      @message = "Session not found"
    end
  end

end
