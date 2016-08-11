class AddSerieRefToSeriesCliente < ActiveRecord::Migration
  def change
    add_reference :series_clientes, :series, index: true, foreign_key: true
  end
end
