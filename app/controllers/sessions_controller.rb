class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:alert] = "Sign in successful!"
      redirect_to '/'
    else
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:alert] = "Sign out successful!"
    redirect_to '/sign_in'
  end

end
