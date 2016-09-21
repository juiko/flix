class AdminsController < ApplicationController
  before_action :authenticate_client!


  def index
    #get   select alll
    @admin = Client.all
  end

  def show
    @admin = Client.find(params[:id])
  end

end
