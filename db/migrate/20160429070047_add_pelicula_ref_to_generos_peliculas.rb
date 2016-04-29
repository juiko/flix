class AddPeliculaRefToGenerosPeliculas < ActiveRecord::Migration
  def change
    add_reference :generos_peliculas, :pelicula, index: true, foreign_key: true
  end
end
