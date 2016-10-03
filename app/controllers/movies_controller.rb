class MoviesController < ApplicationController
  before_action :authenticate_client!

  def new
    @movie = Movie.new
  end

  def create
    @pelicula = Movie.new(pelicula_params)
    @pelicula.save!
    redirect_to @pelicula
  end

  def show
    @pelicula = Movie.find params[:id]
  end

  def index
    @contenido = Movie.all
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update_attributes(pelicula_params)
      redirect_to @movie
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.genres.each do |genre|
      genre.movies.delete movie
    end

    movie.votes.each do |vote|
      vote.destroy
    end

    movie.destroy
    redirect_to root_path, notice: 'Pelicula eliminada correctamente'
  end

  def list
    @peliculas = Movie.all
  end

  def pelicula_params
    params.require(:movie).permit(:title, :date, :synopsis, :movie)
  end
end
