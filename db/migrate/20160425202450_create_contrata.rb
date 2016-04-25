class CreateContrata < ActiveRecord::Migration
  def change
    create_table :contrata do |t|
      t.date :fecha
      t.date :fecha_vencimiento

      t.timestamps null: false
    end
  end
end
