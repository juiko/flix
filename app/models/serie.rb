class Serie < ActiveRecord::Base

	has_many :usuarios
	has_many :has_generos
	has_many :generos, through: :has_generos

end
