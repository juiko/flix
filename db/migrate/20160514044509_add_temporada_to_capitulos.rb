class AddTemporadaToCapitulos < ActiveRecord::Migration
  def change
    add_column :capitulos, :temporada_id, :integer
  end
end
