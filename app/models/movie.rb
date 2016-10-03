class Movie < ActiveRecord::Base
  include Votable
  include Normalizable
  include Recommendable
  include Urlable
  include MovieUploader[:movie]

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :users
  has_many :movie_votes

  validates :title, presence: true

  def klass
    'Pelicula'
  end

end
