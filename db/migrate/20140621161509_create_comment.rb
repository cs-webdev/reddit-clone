class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
