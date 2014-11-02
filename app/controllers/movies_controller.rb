class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def voteup
    movie = Movie.find(params[:id])
    movie.rankup
    redirect_to(:back)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params.require(:movie).permit(:name, :director, :description))
      redirect_to movies_path
    else
      render :edit
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:name, :director, :description))
    @movie.rank = 0
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    Movie.find(params[:id]).destroy
  end
end
