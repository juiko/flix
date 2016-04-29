class CreateGenerosSeries < ActiveRecord::Migration
  def change
    create_table :generos_series do |t|

      t.timestamps null: false
    end
  end
end
