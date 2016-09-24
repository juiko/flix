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
    @client.destroy
    redirect_to clients_path
  end

  def edit
    @client = Client.find(params[:id])
  end


  def pundit_user
    current_client
  end
end
