class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :email
      t.string :website
      t.text :body
      t.references :post
      # t.integer :parent_id
      # t.integer :lft
      # t.integer :rgt

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
