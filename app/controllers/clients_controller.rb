# coding: utf-8
class ClientsController < ApplicationController

  before_action :authenticate_cliente!

  def index
    @clientes = Client.all
  end

  def show
    authorize! :update, @cliente
    @cliente = Client.find(params[:id])
  end

  def destroy
    @cliente = Client.find(params[:id])
    @cliente.destroy
    redirect_to clientes_path
  end

  def edit
    @cliente = Client.find(params[:id])
  end

end
