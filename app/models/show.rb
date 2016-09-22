class Show < ActiveRecord::Base
  include Normalizable

  has_many :seasons
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :users

  def klass
    'Serie'
  end
end
