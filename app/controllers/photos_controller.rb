class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = Photo.all.sort_by(&:created_at).reverse

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
    @photo = Photo.find(params[:id])
    @user = current_user

  end

  def show
    @photo = Photo.find(params[:id])

    @user_photos = Photo.find(params[:id]).user.photos
    @recent_photos = Photo.find(params[:id]).user.photos.first(2)


  end

  def update
    photo = Photo.find(params[:id]);
    photo.update(photo_params)
    redirect_to user_path(photo.user)

  end

  def destroy
    Photo.find(params[:id]).destroy


    redirect_to users_path


  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :image, :user_id)
  end
end
