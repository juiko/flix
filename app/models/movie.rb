class Movie < ActiveRecord::Base
  include Normalizable

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :users

  def klass
    'Pelicula'
  end
end
