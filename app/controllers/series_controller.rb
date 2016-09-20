class SeriesController < ApplicationController
  def index
    @contenido = Serie.all
  end
end
