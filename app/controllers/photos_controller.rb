class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = Photo.all

  end

  def new
  @user = User.find(current_user.id)
  @photo = Photo.new

  end


  def create
    @user = User.find(current_user.id)
    @user.photos.create(photo_params)
    redirect_to photos_path

  end


  def edit

  end

  def show
    @photo = Photo.find(params[:id])

  end

  def update

  end

  def destroy

  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :image, :user_id)
  end
end
