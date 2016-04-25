class CreatePgeneros < ActiveRecord::Migration
  def change
    create_table :pgeneros do |t|

      t.timestamps null: false
    end
  end
end
