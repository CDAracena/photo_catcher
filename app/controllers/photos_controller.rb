class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = Photo.all

  end

  def new
    @photo = Photo.new
    @photos = Photo.all

  end


  def create
    photo = Photo.create(photo_params)
    redirect_to photos_path

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

  def photo_params
    params.require(:photo).permit(:title, :description, :image)
  end
end
