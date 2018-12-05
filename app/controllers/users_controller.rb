class UsersController < ApplicationController
  # def show
  #   @user = User.find_by(id: params[:id])
  # end

  before_action :authenticate_user!, except: [:index, :show]

  def index 
@user = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
  end

  private

  def user_params
    params.permit(:user).permit(:username, :birthday)
  end
end
