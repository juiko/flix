class AddUsuarioRefToPeliculasUsuario < ActiveRecord::Migration
  def change
    add_reference :peliculas_usuarios, :usuario, index: true, foreign_key: true
  end
end
