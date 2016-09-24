# coding: utf-8
class ClientsController < ApplicationController

  before_action :authenticate_client!

  def index
    @clients = Client.all
  end

  def show
    authorize! :update, @client
    @client = Client.find(params[:id])
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  def edit
    @client = Client.find(params[:id])
  end
end
