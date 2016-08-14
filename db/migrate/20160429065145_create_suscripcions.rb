class CreateSuscripcions < ActiveRecord::Migration
  def change
    create_table :suscripcions do |t|
      t.string :nombre
      t.integer :precio
      t.integer :duracion

      t.timestamps null: false
    end
  end
end
