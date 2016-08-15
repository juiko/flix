class Temporada < ActiveRecord::Base

	belongs_to :series
	has_many :capitulos

end
