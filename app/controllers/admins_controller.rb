class AdminsController < ApplicationController

  before_action :authenticate_cliente!


  def index
    #get   select alll
    @admin = Cliente.all

  end

  def show
    @admin = Cliente.find(params[:id])
  end

end
