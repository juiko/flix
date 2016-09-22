class SubscriptionsController < ApplicationController
  def index
    @subscription = Subscription.all
  end

  def show
    authorize! :update, @client
    @subscription = Subscription.find(params[:id])
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(name: params[:subscription][:name],
                                    price: params[:subscription][:price],
                                    duration: params[:subscription][:duration])
    if @subscription.save
      redirect_to admins_path, id: 0
    else
      render :new
    end
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    redirect_to clients_path
  end
end
