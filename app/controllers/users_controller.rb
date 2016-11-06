class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user = current_user
  end

  def edit
    @user.edit user_params
  end

  def update
    @user.update user_params
  end

  def destroy
    @user.destroy
  end

  # def admin?
  #   current_user.admin
  # end

  private
  def user_params
    params.require(:user).permit(:name, :email, :admin, :encrypted_password)
  end
end
