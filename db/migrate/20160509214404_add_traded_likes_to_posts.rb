class AddTradedLikesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :traded, :boolean, default: false
    add_column :posts, :num_likes, :integer
  end
end
