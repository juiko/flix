class AddPathToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :path, :string, null: false, default: 'notfound.mp4'
  end
end
