class Subscription < ActiveRecord::Base
  belongs_to :client

  def self.search(query)
    query = "%#{query}%"
    where("name LIKE ? or price LIKE ? or duration LIKE ?", query, query, query)
  end
end
