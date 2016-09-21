class SubscriptionsController < ApplicationController
  def index
    @suscripcion = Subscription.all
  end

  def show
    authorize! :update, @client
    @suscripcion = Subscription.find(params[:id])
  end

  def new
    @suscripcion = Subscription.new
  end

  def create
    @suscripcion = Subscription.new(nombre: params[:suscripcion][:nombre],
                                   precio: params[:suscripcion][:precio],
                                   duracion: params[:suscripcion][:duracion])
    if @suscripcion.save
      redirect_to admins_path, id: 0
    else
      render :new
    end
  end

  def destroy
    @suscripcion = Subscription.find(params[:id])
    @suscripcion.destroy
    redirect_to clients_path
  end
end
