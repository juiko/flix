module Recommendable
  extend ActiveSupport::Concern

  def similar(klass=self.class)
    klass
      .joins(:genres)
      .uniq
      .where.not(id: id)
      .limit(10)
  end
end
