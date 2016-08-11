class AddPeliculaRefToPeliculasCliente < ActiveRecord::Migration
  def change
    add_reference :peliculas_clientes, :pelicula, index: true, foreign_key: true
  end
end
