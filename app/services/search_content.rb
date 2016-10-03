class SearchContent
  def by_genre(genres)
    ids = genres.map(&:id)
    movies = Movie.joins(:genres).where(genres: { id: ids })
    shows = Show.joins(:genres).where(genres: { id:  ids })

    movies + shows
  end
end
