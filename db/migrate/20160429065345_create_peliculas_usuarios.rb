class CreatePeliculasUsuarios < ActiveRecord::Migration
  def change
    create_table :peliculas_usuarios do |t|

      t.timestamps null: false
    end
  end
end
