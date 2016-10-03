class Show < ActiveRecord::Base
  include Votable
  include Normalizable

  has_many :seasons
  has_many :show_votes

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :users

  validates :title, presence: true

  def klass
    'Serie'
  end

  def sorted_seasons
    seasons.order :number
  end
end
