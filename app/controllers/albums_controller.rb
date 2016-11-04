class AlbumsController < ApplicationController
  def show
    @title = params[:id]
    @album = Album.getAlbum(@title)
    gon.albums = [@album]
    if @album.nil?
      redirect_to root_path
    end
  end
end
