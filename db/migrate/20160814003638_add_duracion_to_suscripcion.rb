class AddDuracionToSuscripcion < ActiveRecord::Migration
  def change
  	add_column :suscripcions, :duracion, :integer
  end
end
