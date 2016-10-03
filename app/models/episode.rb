class Episode < ActiveRecord::Base
  include Urlable
  # include Recommendable
  include EpisodeUploader[:episode]

  belongs_to :season
  has_and_belongs_to_many :users

  def genres
    season.show.genres
  end
end
