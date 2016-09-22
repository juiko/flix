module Votable
  extend ActiveSupport::Concern

  def votes
    klass = "#{self.class}".downcase
    send("#{klass}_votes")
  end

  def rating
    votes.average('rating').to_i
  end
end
