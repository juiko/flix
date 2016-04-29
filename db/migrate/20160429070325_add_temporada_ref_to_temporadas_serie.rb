class AddTemporadaRefToTemporadasSerie < ActiveRecord::Migration
  def change
    add_reference :temporadas_series, :temporada, index: true, foreign_key: true
  end
end
