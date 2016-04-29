class AddSerieRefToGenerosSerie < ActiveRecord::Migration
  def change
    add_reference :generos_series, :series, index: true, foreign_key: true
  end
end
