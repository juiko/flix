class FlixController < ApplicationController
  before_action :authenticate_cliente!

  def index
    peliculas = Pelicula.first(10)
    series = Serie.first(10)

    @contenido = Array.new
    @contenido.concat peliculas
    @contenido.concat series

    @contenido.shuffle!
  end
end
