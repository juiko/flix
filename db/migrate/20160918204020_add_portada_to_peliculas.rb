class AddPortadaToPeliculas < ActiveRecord::Migration
  def change
    add_column :peliculas, :portada, :string
  end
end
