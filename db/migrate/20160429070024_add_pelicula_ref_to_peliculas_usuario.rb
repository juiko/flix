class AddPeliculaRefToPeliculasUsuario < ActiveRecord::Migration
  def change
    add_reference :peliculas_usuarios, :pelicula, index: true, foreign_key: true
  end
end
