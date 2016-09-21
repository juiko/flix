class CreateShowsGenres < ActiveRecord::Migration
  def change
    create_table :genres_shows, id: false do |t|
      t.integer :show_id
      t.integer :genre_id
    end

    add_index :genres_shows, :show_id
    add_index :genres_shows, :genre_id
  end
end
