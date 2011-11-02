class AddCommentableToPost < ActiveRecord::Migration
  def change
    add_column :posts, :commentable, :boolean, :default => true
  end
end
