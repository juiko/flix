class CreateGenerosPeliculas < ActiveRecord::Migration
  def change
    create_table :generos_peliculas do |t|

      t.timestamps null: false
    end
  end
end
