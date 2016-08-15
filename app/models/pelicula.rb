class Pelicula < ActiveRecord::Base

has_many :usuarios
has_many :generos

end
