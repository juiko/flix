class CreateEpisodesUsers < ActiveRecord::Migration
  def up
    create_table :episodes_users, id: false do |t|
      t.integer :episode_id
      t.integer :user_id
    end

    add_index :episodes_users, :episode_id
    add_index :episodes_users, :user_id
  end

  def down
    drop_table :episodes_users
  end
end
