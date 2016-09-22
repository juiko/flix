class User < ActiveRecord::Base
  belongs_to :client

  has_and_belongs_to_many :movies
  has_and_belongs_to_many :episodes
  has_and_belongs_to_many :shows

  has_many :movie_votes
  has_many :show_votes
end
