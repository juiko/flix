class AdminsController < ApplicationController
  before_action :authenticate_client!
  before_action :authorize_client!

  def clients
    query = params[:query]

    if query
      @clients = Client.search_by_name_or_email query
    end
  end

  private

  def authorize_client!
    authorize current_client
  end

  def pundit_user
    current_client
  end
end
