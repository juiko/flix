class Show < ActiveRecord::Base
  has_many :seasons
  has_and_belongs_to_many :genres
end
