class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :mail
      t.string :telefono
      t.string :nombre
      t.string :contraseña

      t.timestamps null: false
    end
  end
end
