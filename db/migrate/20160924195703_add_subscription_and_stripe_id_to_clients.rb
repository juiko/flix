class AddSubscriptionAndStripeIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :subscribed, :boolean
    add_column :clients, :stripeid, :string
  end
end
