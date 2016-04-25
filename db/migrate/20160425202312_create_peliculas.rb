class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.date :fecha
      t.string :sinopsis

      t.timestamps null: false
    end
  end
end
