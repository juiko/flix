# coding: utf-8
class ClientesController < ApplicationController

  before_action :validate_cliente!

  def index
    @clientes = Cliente.all
  end

  def show
    authorize! :update, @cliente
    @cliente = Cliente.find(params[:id])
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy
    redirect_to clientes_path
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end


end
