class CreateCapitulos < ActiveRecord::Migration
  def change
    create_table :capitulos do |t|

      t.timestamps null: false
    end
  end
end
