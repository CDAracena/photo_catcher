class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def create

  end

  def new

  end

  def edit
    @user = User.find(params[:id])

  end

  def show
    @user = User.find(params[:id])

  end

  def update
    user = User.find(params[:id])
    user.update(user_params)

    redirect_to user_path

  end

  def destroy
    
  end

  private

  def user_params
    params.require(:user).permit(:f_name, :l_name, :email, :username, :about, :avatar)
  end

end
