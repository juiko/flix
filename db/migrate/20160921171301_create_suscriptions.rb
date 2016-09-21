class CreateSuscriptions < ActiveRecord::Migration
  def change
    create_table :suscriptions do |t|
      t.integer :price
      t.integer :duration
      t.datetime :date
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
