class CreateForumThreads < ActiveRecord::Migration[6.1]
  def change
    create_table :forum_threads do |t|
      t.string :subject
      t.references :user

      t.timestamps
    end
  end
end
