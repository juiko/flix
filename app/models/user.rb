class User < ActiveRecord::Base
  belongs_to :client

  has_and_belongs_to_many :movies
  has_and_belongs_to_many :episodes
  has_and_belongs_to_many :shows
end
