class AddSerieRefToSeriesUsuario < ActiveRecord::Migration
  def change
    add_reference :series_usuarios, :series, index: true, foreign_key: true
  end
end
