class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :sinopsis

      t.timestamps null: false
    end
  end
end
