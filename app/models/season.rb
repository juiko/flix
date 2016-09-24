class Season < ActiveRecord::Base
  belongs_to :show
  has_many :episodes

  def sorted_episodes
    episodes.order :number
  end
end
