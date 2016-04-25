class CreateSGeneros < ActiveRecord::Migration
  def change
    create_table :s_generos do |t|

      t.timestamps null: false
    end
  end
end
