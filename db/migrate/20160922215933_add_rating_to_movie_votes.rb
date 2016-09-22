class AddRatingToMovieVotes < ActiveRecord::Migration
  def change
    add_column :movie_votes, :rating, :integer
  end
end
