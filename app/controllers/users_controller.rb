class UsersController < ApplicationController
  def index
    @user = current_user
    

  end

  def create

  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:f_name, :l_name, :email, :username, :about, :avatar)
  end

end
