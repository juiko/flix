class SeasonsController < ApplicationController
  def show
    @season = Season.find params[:id]
  end

  def new
    @show = Show.find(params[:show_id])

    @season = Season.new
    @season.show = @show
  end

  def create
    @season = Season.new
    @season.number = params[:season][:number]
    @show = Show.find params[:season][:show]
    @season.show = @show

    @season.save

    redirect_to show_path(@show)
  end

  def show_params
    params.require(:season).permit(:number, :show)
  end
end
