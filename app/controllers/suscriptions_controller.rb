class SuscriptionsController < ApplicationController
  def index
    @suscripcion = Suscription.all
  end

  def show
    authorize! :update, @cliente
    @suscripcion = Suscription.find(params[:id])
  end

  def new
    @suscripcion = Suscription.new
  end

  def create
    @suscripcion = Suscription.new(nombre: params[:suscripcion][:nombre],
                                   precio: params[:suscripcion][:precio],
                                   duracion: params[:suscripcion][:duracion])
    if @suscripcion.save
      redirect_to admins_path, id: 0
    else
      render :new
    end
  end

  def destroy
    @suscripcion = Suscription.find(params[:id])
    @suscripcion.destroy
    redirect_to clients_path
  end
end
