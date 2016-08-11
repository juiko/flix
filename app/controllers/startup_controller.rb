class StartupController < ApplicationController
  def index
    @peliculas = Pelicula.all
  end
end
