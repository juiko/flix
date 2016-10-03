module Urlable
  extend ActiveSupport::Concern

  def url
    klass = "#{self.class}".downcase
    send("#{klass}_url")
  end
end
