class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def top_albums
    @albums = Album.all.sort_by{|album| album.rank}.reverse.first(7)
  end

  def voteup
    album = Album.find(params[:id])
    album.rankup
    redirect_to(:back)
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:name, :artist, :description))
      redirect_to albums_path
    else
      render :edit
    end
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:name, :artist, :description))
    @album.rank = 0
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def destroy
    Album.find(params[:id]).destroy
    redirect_to albums_path
  end
end
