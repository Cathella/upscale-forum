class CreateForumPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :forum_posts do |t|
      t.text :body
      t.references :forum_thread
      t.references :user

      t.timestamps
    end
  end
end
