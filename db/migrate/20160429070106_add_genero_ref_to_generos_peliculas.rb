class AddGeneroRefToGenerosPeliculas < ActiveRecord::Migration
  def change
    add_reference :generos_peliculas, :genero, index: true, foreign_key: true
  end
end
