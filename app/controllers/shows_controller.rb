class ShowsController < ApplicationController
  def index
    @contenido = Show.all
  end
end
