module Normalizable
  extend ActiveSupport::Concern

  def normalized_title
    title.length > 23 ? title.slice(0, 20) + '...' : title
  end
end
