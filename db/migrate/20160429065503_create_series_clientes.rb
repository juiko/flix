class CreateSeriesClientes < ActiveRecord::Migration
  def change
    create_table :series_clientes do |t|

      t.timestamps null: false
    end
  end
end
