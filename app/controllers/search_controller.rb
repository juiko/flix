class SearchController < ApplicationController

  def client
    palabra = "%#{params[:keyword]}%"
    @clients = Client.where("name LIKE ? or email LIKE ?", palabra, palabra)


    respond_to do |format|
      format.html{ redirect_to clients_path}
      format.json{ render json: @clients}
      format.js
    end
  end

  def suscrip
    palabra = "%#{params[:keyword]}%"
    @subscriptions = Subscription.where("name LIKE ? or price LIKE ? or duration LIKE ?", palabra, palabra, palabra)


    respond_to do |format|
      format.html{ redirect_to subscriptions_path}
      format.json{ render json: @subscriptions}
      format.js
    end
  end

end
