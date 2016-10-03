class ShowsController < ApplicationController
  before_action :find_show, only: [:edit, :update, :show, :destroy]

  def index
    @shows = Show.all
  end

  def show
    session[:current_show] = @show
  end

  def new
    @show = Show.new

  end

  def edit
  end

  def update
    @show = Show.find params[:id]
    @show.update_attributes(show_params)

    redirect_to @show
  end

  def create
    @show = Show.new(show_params)
    @show.save!
    redirect_to @show
  end

  def destroy
    @show.seasons.each do |season|
      season.episodes.each do |episode|
        episode.destroy
      end

      season.destroy
    end

    @show.votes.each do |vote|
      vote.destroy
    end

    @show.destroy

    redirect_to root_path, notice: 'Serie eliminada'
  end

  private

  def find_show
    @show = Show.find params[:id]
  end

  def show_params
    params.require(:show).permit(:title, :synopsis)
  end
end
