class Usuario < ActiveRecord::Base

belongs_to :clientes
has_many :series
has_many :peliculas
has_many :has_usuarios

end
