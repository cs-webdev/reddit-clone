class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
