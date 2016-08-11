class AddSerieToTemporadas < ActiveRecord::Migration
  def change
    add_column :temporadas, :serie_id, :integer
  end
end
