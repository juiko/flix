class MoviesController < ApplicationController
  before_action :authenticate_cliente!

  def new
    @pelicula = Movie.new
  end

  def create
    @pelicula = Movie.new(pelicula_params)

    if @pelicula.save
      redirect_to url_for('index', @pelicula)
    else
      redirect_to url_for('new')
    end
  end

  def show
    @pelicula = Movie.find params[:id]
  end

  def index
    @contenido = Movie.all
  end

  def edit
  end

  def destroy
    Movie.find(params[:id]).destroy
  end

  def list
    @peliculas = Movie.all
  end

  def pelicula_params
    params.require(:pelicula).permit(:title, :date, :synopsis)
  end
end
