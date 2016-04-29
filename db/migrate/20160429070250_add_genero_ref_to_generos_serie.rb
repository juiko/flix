class AddGeneroRefToGenerosSerie < ActiveRecord::Migration
  def change
    add_reference :generos_series, :genero, index: true, foreign_key: true
  end
end
