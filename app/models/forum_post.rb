# == Schema Information
#
# Table name: forum_posts
#
#  id              :bigint           not null, primary key
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  forum_thread_id :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_forum_posts_on_forum_thread_id  (forum_thread_id)
#  index_forum_posts_on_user_id          (user_id)
#
class ForumPost < ApplicationRecord
  belongs_to :user
  belongs_to :forum_thread
end
