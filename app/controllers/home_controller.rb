class HomeController < ApplicationController
  def index
    @users = User.all.last(3)
    @photos = Photo.all.last(4)
  end
end
