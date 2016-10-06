class SearchController < ApplicationController
  before_action :authenticate_client!

  def clients
    @clients = Client.search_by_name_or_email params[:keyword]

    respond_to do |format|
      format.html { redirect_to clients_path }
      format.json { render json: @clients }
      format.js
    end
  end

  def suscrip
    @subscriptions = Subscriptions.search params[:keyword]

    respond_to do |format|
      format.html { redirect_to subscriptions_path }
      format.json { render json: @subscriptions }
      format.js
    end
  end

  def content
    @content = ContentSearcher.new(params[:query]).call
  end
end
