class CreateTemporadasSeries < ActiveRecord::Migration
  def change
    create_table :temporadas_series do |t|

      t.timestamps null: false
    end
  end
end
