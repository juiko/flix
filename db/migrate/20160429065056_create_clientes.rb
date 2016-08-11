class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :telefono
      t.string :email
      t.string :password

      t.timestamps null: false
  end
end
