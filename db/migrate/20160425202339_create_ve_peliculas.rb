class CreateVePeliculas < ActiveRecord::Migration
  def change
    create_table :ve_peliculas do |t|

      t.timestamps null: false
    end
  end
end
