class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :subscription
  has_many :users

  def self.search_by_name_or_email(query)
    query = "%#{query}%"
    Client.where("name LIKE ? or email LIKE ?", query, query)
  end
end
