class FlixController < ApplicationController
  def index
    peliculas = Movie.first(10)
    series = Show.first(10)

    @contenido = []
    @contenido.concat peliculas
    @contenido.concat series

    @contenido.shuffle!
  end
end
