# coding: utf-8
class ClientesController < ApplicationController

  def index
    @cliente = Cliente.all
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy #elimina el objeto de la bd
    redirect_to clientes_path
  end

  private

  def sign_up_params
    params.require(:cliente).permit(:nombre, :telefono)
  end
end
