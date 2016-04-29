class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.date :fecha_compra
      t.date :fecha_vencimiento

      t.timestamps null: false
    end
  end
end
