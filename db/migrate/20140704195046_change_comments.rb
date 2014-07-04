class ChangeComments < ActiveRecord::Migration
  def change
  	rename_column :comments, :upvote, :upvotes
  	rename_column :comments, :downvote, :downvotes
  	add_reference :comments, :post, index: true
  end
end
