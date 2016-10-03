class EpisodesController < ApplicationController
  before_action :authenticate_client!

  def show
    @episode = Episode.find params[:id]
    session[:current_show] = @episode.season.show
    session[:current_season] = @episode.season
  end

  def destroy
    @episode = Episode.find params[:id]
    season = @episode.season
    @episode.destroy
    redirect_to show_path season.show, notice: 'Episodio eliminado correctamente'
  end

  def new
    @episode = Episode.new
    @season = Season.find params[:season_id]

    @episode.season = @season
  end

  def edit
    @episode = Episode.find params[:id]
  end

  def create
    @episode = Episode.new(title: params[:episode][:title],
                           episode: params[:episode][:episode],
                           number: params[:episode][:number])
    @season = Season.find params[:season_id]
    @episode.season = @season

    @episode.save

    redirect_to show_season_episode_path(@episode.season.show, @episode.season, @episode)
  end

  def update
    @episode = Episode.find params[:id]

    @episode.update_attributes(episode_params)

    redirect_to show_season_episode_path(@episode.season.show, @episode.season, @episode)
  end

  def episode_params
    params.require(:episode).permit(:title, :episode, :season_id, :number)
  end
end
