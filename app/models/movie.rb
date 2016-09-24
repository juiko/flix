class Movie < ActiveRecord::Base
  include Votable
  include Normalizable

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :users
  has_many :movie_votes

  def klass
    'Pelicula'
  end

  def similar
    Movie
      .joins(:genres)
      .uniq
      .where.not(id: id)
      .limit(10)
  end
end
