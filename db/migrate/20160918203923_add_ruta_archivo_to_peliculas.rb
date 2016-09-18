class AddRutaArchivoToPeliculas < ActiveRecord::Migration
  def change
    add_column :peliculas, :ruta_archivo, :string
  end
end
