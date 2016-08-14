class AddClienteRefToSeriesCliente < ActiveRecord::Migration
  def change
    add_reference :series_clientes, :cliente, index: true, foreign_key: true
  end
end
