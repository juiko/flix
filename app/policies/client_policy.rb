class ClientPolicy < ApplicationPolicy
  def initialize(client, record)
    @client = client
    @record = record
  end

  def index?
    admin?
  end

  def show?
    @client.name == record.name
  end

  def edit?
    @client.name == record.name
  end

  private

  def admin?
    @client.admin
  end
end
