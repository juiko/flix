class AddRatingToShowVotes < ActiveRecord::Migration
  def change
    add_column :show_votes, :rating, :integer
  end
end
