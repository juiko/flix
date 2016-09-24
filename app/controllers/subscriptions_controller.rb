class SubscriptionsController < ApplicationController

  before_filter :authenticate_client!

  def new
  end

  def update
    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      card: token,
      plan: 30,
      email: current_client.email

      )
    current_client.subscribed = true
    current_client.stripeid = customer.id
    current_client.save

    redirec_to root_path
  end



end
