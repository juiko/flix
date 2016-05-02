class AddSerieRefToTemporadas < ActiveRecord::Migration
  def change
    add_reference :temporadas, :series, index: true, foreign_key: true
  end
end
