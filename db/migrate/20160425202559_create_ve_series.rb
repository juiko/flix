class CreateVeSeries < ActiveRecord::Migration
  def change
    create_table :ve_series do |t|

      t.timestamps null: false
    end
  end
end
