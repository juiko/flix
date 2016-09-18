class AddRutaArchivoToSeries < ActiveRecord::Migration
  def change
    add_column :series, :ruta_archivo, :string
  end
end
