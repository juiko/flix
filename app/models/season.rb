class Season < ActiveRecord::Base
  belongs_to :show
  has_many :episodes

  validates :number, presence: true, numericality: true

  def sorted_episodes
    episodes.order :number
  end
end
