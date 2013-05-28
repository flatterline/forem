class AddFlaggedToForemPosts < ActiveRecord::Migration
  def change
    add_column :forem_posts, :flagged, :boolean, default: false
  end
end
