class AddPathToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :path, :string, null: false, default: 'notfound.mp4'
  end
end
