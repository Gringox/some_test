class UserController < ApplicationController

  # POST
  def create
    @user = User.new(username: params[:username].to_s, password: params[:password].to_s, password_confirmation: params[:password_confirmation].to_s)
    if @user.save
      @response = "OK"
    else
      @response = "ERROR"
    end
  end

  # GET
  def sign_up
  end

end
