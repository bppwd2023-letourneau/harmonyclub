class Web::PhotosController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.where(id:params[:id]).first
    @photos = Photo.all
  end
end
