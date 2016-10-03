class AddMovieDataToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :movie_data, :text
  end
end
