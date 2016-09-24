class AddNumberToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :number, :integer
  end
end
