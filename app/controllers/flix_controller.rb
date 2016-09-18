class FlixController < ApplicationController
  def index
    peliculas = Pelicula.first(10)
    series = Serie.first(10)

    @contenido = Array.new
    @contenido.concat peliculas
    @contenido.concat series

    @contenido.shuffle!
  end
end
