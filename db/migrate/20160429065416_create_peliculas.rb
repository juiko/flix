class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.text :sinopsis
      t.date :fecha

      t.timestamps null: false
    end
  end
end
