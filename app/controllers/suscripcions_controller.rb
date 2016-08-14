class SuscripcionsController < ApplicationController

def index
        @suscripcion = Suscripcion.all
end

def show
        @suscripcion = Suscripcion.find(params[:id])
end


def new
        @suscripcion = Suscripcion.new
end


def create
        @suscripcion = Suscripcion.new(nombre: params[:suscripcion][:nombre],
                        precio: params[:suscripcion][:precio],
                        duracion: params[:suscripcion][:duracion])
        if @suscripcion.save
                redirect_to admins_path, id: 0
        else
                render :new
        end
end


def destroy
        @suscripcion = Suscripcion.find(params[:id])
        @suscripcion.destroy
        redirect_to clientes_path
end



end