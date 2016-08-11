class CreatePeliculasClientes < ActiveRecord::Migration
  def change
    create_table :peliculas_clientes do |t|

      t.timestamps null: false
    end
  end
end
