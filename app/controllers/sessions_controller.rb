class SessionsController < ApplicationController

  def new
    redirect_to root_path if current_user
  end

  def create
    redirect_to root_path if current_user
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Log In Successful"
      redirect_to root_path
    else
      flash[:notice] = "Login Failed"
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end
