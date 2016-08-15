class SearchController < ApplicationController

  def client
    palabra = "%#{params[:keyword]}%"
    @clientes = Suscripcion.where("nombre LIKE ? or email LIKE ?", palabra, palabra)


    respond_to do |format|
      format.html{ redirect_to clientes_path}
      format.json{ render json: @clientes}
      format.js
    end
  end

  def suscrip
    palabra = "%#{params[:keyword]}%"
    @suscripcions = Suscripcion.where("nombre LIKE ? or precio LIKE ? or duracion LIKE ?", palabra, palabra, palabra)


    respond_to do |format|
      format.html{ redirect_to suscripcions_path}
      format.json{ render json: @suscripcions}
      format.js
    end
  end

end
