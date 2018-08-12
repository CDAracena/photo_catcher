class HomeController < ApplicationController
  def index
    @user = User.all.order("created_at DESC")
    @photos = Photo.all.last(4)
  end
end
