class User < ActiveRecord::Base
  belongs_to :client

  has_and_belongs_to_many :movies
  has_and_belongs_to_many :episodes
  has_and_belongs_to_many :shows

  has_many :movie_votes
  has_many :show_votes

  def genres
    movie_genres = movies.map(&:genres)
    show_genres = shows.map(&:genres)
    g = movie_genres + show_genres
    g.flatten.uniq
  end

  def votes
    (movie_votes + show_votes).flatten
  end
end
