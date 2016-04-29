class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nick

      t.timestamps null: false
    end
  end
end
