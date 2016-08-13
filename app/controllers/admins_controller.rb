class AdminsController < ApplicationController

  ### No se que modelo ocupar xd

  def index
    #get   select alll
    @admin = Cliente.all
  end

  def show
    @admin = Cliente.find(params[:id])
  end

end
