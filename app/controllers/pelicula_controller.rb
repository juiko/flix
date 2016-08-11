class PeliculaController < ApplicationController
  def crear
  end

  def ver
    @pelicula = Pelicula.find params[:id]
  end

  def actualizar
  end

  def destruir
    Pelicula.find(params[:id]).destroy
  end

  def listar
    @peliculas = Pelicula.all
  end
end
