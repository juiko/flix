class ShowsController < ApplicationController
  def index
    @contenido = Show.all
  end

  def show
    @show = Show.find params[:id]
  end
end
