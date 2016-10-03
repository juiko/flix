class FlixController < ApplicationController
  def index
    @movies = Movie.all
    @shows = Show.all
  end

  def search
    query = params[:query]

    movies = Movie.where('title like ?', "%#{query}%")
    shows = Show.where('title like ?', "%#{query}%")

    @content = (movies + shows).flatten
  end
end
