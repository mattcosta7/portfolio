class AlbumsController < ApplicationController
  def show
    @title = params[:id]
    @album = Album.getAlbum(@title)
    if @album.nil?
      redirect_to root_path
    end
  end
end
