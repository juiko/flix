class AddClienteRefToUsuariosCliente < ActiveRecord::Migration
  def change
    add_reference :usuarios_clientes, :cliente, index: true, foreign_key: true
  end
end
