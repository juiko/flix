class AddClienteRefToPeliculasCliente < ActiveRecord::Migration
  def change
    add_reference :peliculas_clientes, :cliente, index: true, foreign_key: true
  end
end
