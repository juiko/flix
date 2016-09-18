class AddPortadaToSeries < ActiveRecord::Migration
  def change
    add_column :series, :portada, :string
  end
end
