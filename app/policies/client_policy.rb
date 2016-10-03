class ClientPolicy < ApplicationPolicy
  def initialize(client, record)
    @client = client
    @record = record
  end

  def index?
    admin?
  end

  def show?
    @client.admin
  end

  def edit?
    @client.admin
  end

  private

  def admin?
    @client.admin
  end
end
