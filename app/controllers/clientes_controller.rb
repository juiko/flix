class ClientesController < ApplicationController

def index
#get   select alll
	@clientes = Cliente.all
end

def show
#busqueda
	@cliente = Cliente.find(params[:id])
#Cliente.where("id = ? AND mail ?",params[:id],params[:id])
end


def create
#insert intro
	@cliente = Cliente.new(nombre: params[:cliente][:nombre],
			telefono: params[:cliente][:telefono],
			mail: params[:cliente][:mail],
			contraseña: params[:cliente][:contraseña])
	if @cliente.save
		redirect_to @cliente
	else
		render :new
	end
end


def destroy
#DELETE FROM clientes
	@cliente = Cliente.find(params[:id])
	@cliente.destroy #elimina el objeto de la bd
	redirect_to clientes_path
end


def update
#update
#@cliente.update_atributes({nombre:""})
end

end