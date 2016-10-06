class ContentSearcher
  def initialize(query)
    @query = query
  end

  def call
    movies = Movie.where('title like ?', "%#{@query}%")
    shows = Show.where('title like ?', "%#{@query}%")
    movies + shows
  end
end
