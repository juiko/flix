class Genero < ActiveRecord::Base

	has_many :peliculas
	has_many :series
	has_many :has_generos
	has_many :peliculas, through: :has_generos
	has_many :series, through: :has_generos


end
