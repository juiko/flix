class AddPathToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :epidode_path, :string, null: false, default: 'notfound.mp4'
  end
end
