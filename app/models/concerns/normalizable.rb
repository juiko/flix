module Normalizable
  extend ActiveSupport::Concern

  def normalized_title
    title.length > 26 ? title.slice(0, 23) + '...' : title
  end
end
