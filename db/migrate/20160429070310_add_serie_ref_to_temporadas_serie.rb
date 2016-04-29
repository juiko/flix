class AddSerieRefToTemporadasSerie < ActiveRecord::Migration
  def change
    add_reference :temporadas_series, :series, index: true, foreign_key: true
  end
end
