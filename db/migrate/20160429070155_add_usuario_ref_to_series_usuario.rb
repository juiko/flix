class AddUsuarioRefToSeriesUsuario < ActiveRecord::Migration
  def change
    add_reference :series_usuarios, :usuario, index: true, foreign_key: true
  end
end
