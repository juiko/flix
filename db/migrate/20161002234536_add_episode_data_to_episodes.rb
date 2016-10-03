class AddEpisodeDataToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :episode_data, :text
  end
end
