class SessionController < ApplicationController
  def new
  end

  def create
    # find the user with this email address
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path # IRL: send somewhere better
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
      # show them the login form again
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
