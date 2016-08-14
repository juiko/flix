class SuscripcionsController < ApplicationController

def index
#get   select alll
        @suscripcion = Suscripcion.all
end

def show
        @suscripcion = Suscripcion.find(params[:id])
end


def new
        @suscripcion = Suscripcion.new
end


def create
#insert intro
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
#DELETE FROM suscripcion
        @suscripcion = Suscripcion.find(params[:id])
        @suscripcion.destroy #elimina el objeto de la bd
        redirect_to clientes_path
end


def update
#update
#@suscripcion.update_atributes({nombre:""})
end

end