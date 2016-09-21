class CreateMoviesGenres < ActiveRecord::Migration
  def up
    create_table :genres_movies, id: false do |t|
      t.integer :movie_id
      t.integer :genre_id
    end

    add_index :genres_movies, :movie_id
    add_index :genres_movies, :genre_id
  end

  def down
    drop_table :genres_movies
  end
end
