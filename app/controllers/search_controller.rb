class SearchController < ApplicationController

  def create
    palabra = "%#{params[:keyword]}%"
    @clientes = Cliente.where("nombre LIKE ? or email LIKE ?", palabra, palabra)


    respond_to do |format|
      format.html{ redirect_to clientes_path}
      format.json{ render json: @clientes}
      format.js
    end
  end
end
