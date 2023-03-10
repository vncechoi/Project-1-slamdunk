class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @user = User.all
  end
  def new
    @user = User.new
  end

  def create 
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id # log in the newly created user
      redirect_to root_path #TODO: sned the user to a better page
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
