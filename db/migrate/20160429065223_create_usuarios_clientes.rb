class CreateUsuariosClientes < ActiveRecord::Migration
  def change
    create_table :usuarios_clientes do |t|

      t.timestamps null: false
    end
  end
end
