class PeliculasController < ApplicationController
  def new
    @pelicula = Pelicula.new
  end

  def create
    @pelicula = Pelicula.new(pelicula_params)

    if @pelicula.save
      redirect_to '/peliculas/' + @pelicula.id.to_s
    else
      redirect_to url_for 'new'
    end
  end

  def show
    @pelicula = Pelicula.find params[:id]
  end

  def index
  end

  def edit
  end

  def destroy
    Pelicula.find(params[:id]).destroy
  end

  def list
    @peliculas = Pelicula.all
  end

  def pelicula_params
    params.require(:pelicula).permit(:nombre, :fecha, :sinopsis)
  end
end
