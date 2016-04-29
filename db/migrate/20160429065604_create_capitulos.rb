class CreateCapitulos < ActiveRecord::Migration
  def change
    create_table :capitulos do |t|
      t.string :nombre
      t.text :sinopsis
      t.integer :numero

      t.timestamps null: false
    end
  end
end
