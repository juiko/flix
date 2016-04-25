class CreateSuscripcions < ActiveRecord::Migration
  def change
    create_table :suscripcions do |t|
      t.string :nombre
      t.string :precio
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
