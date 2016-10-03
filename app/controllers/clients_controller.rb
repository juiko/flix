# coding: utf-8
class ClientsController < ApplicationController

  before_action :authenticate_client!

  def index
    @clients = Client.all
    authorize current_client
  end

  def show
    @client = Client.find(params[:id])
    authorize @client
  end

  def destroy
    @client = Client.find(params[:id])

    @client.users.each do |user|

      user.votes.each do |vote|
        vote.destroy
      end

      user.destroy
    end

    @client.destroy
    redirect_to clients_path
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find params[:id]

    @client.update_attributes(client_params)

    redirect_to @client, notice: 'Cliente actualizado correctamente'
  end

  def pundit_user
    current_client
  end

  def client_params
    params.require(:client).permit(:name, :phone, :email)
  end
end
