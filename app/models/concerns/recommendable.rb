module Recommendable
  extend ActiveSupport::Concern

  def similar
    self
      .class
      .joins(:genres)
      .uniq
      .where.not(id: id)
      .limit(10)
  end
end
