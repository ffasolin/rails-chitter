class UsersController < ApplicationController
  def create
    @user = User.new(params.require(:users).permit(:name, :username, :email, :password))
    @user.save
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
