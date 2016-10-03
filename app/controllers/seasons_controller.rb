class SeasonsController < ApplicationController
  def show
    @season = Season.find params[:id]
    session[:current_show] = @season.show
    session[:current_season] = @season
  end

  def new
    @season = Season.new
  end
end
