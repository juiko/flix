class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :nombre
      t.text :sinopsis

      t.timestamps null: false
    end
  end
end
