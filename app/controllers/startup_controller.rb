class StartupController < ApplicationController

  before_action :authenticate_cliente!

  def index
    @peliculas = Pelicula.all
  end
end
