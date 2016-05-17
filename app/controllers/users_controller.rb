class UsersController < ApplicationController
   def new
    @user = User.new
  end

  def create
    user = User.create user_params
    session[:user_id] = user.id
    flash[:success] = "You successfully created an account."
    redirect_to factual_show_path
  end

  

  def user_params
    params.require(:user).permit(:email, :password)
  end

end