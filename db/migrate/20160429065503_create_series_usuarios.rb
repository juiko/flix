class CreateSeriesUsuarios < ActiveRecord::Migration
  def change
    create_table :series_usuarios do |t|

      t.timestamps null: false
    end
  end
end
