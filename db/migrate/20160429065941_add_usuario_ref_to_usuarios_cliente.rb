class AddUsuarioRefToUsuariosCliente < ActiveRecord::Migration
  def change
    add_reference :usuarios_clientes, :usuario, index: true, foreign_key: true
  end
end
