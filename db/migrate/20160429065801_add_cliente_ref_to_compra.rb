class AddClienteRefToCompra < ActiveRecord::Migration
  def change
    add_reference :compras, :cliente, index: true, foreign_key: true
  end
end
