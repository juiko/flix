class Compra < ActiveRecord::Base

belongs_to :clientes
has_one :suscripcions
has_one :clientes ,through: :has_suscripcions   


end
