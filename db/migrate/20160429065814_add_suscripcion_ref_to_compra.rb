class AddSuscripcionRefToCompra < ActiveRecord::Migration
  def change
    add_reference :compras, :suscripcion, index: true, foreign_key: true
  end
end
