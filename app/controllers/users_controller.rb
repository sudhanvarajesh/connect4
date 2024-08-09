# app/controllers/users_controller.rb

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if User.exists?(email: @user.email)
      flash[:alert] = 'Email already exists.'
      render :new
    elsif @user.save
      flash[:notice] = 'Sign-up successful!'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :username, :password, :password_confirmation)
  end
end
