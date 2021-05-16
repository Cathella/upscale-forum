# == Schema Information
#
# Table name: forum_threads
#
#  id         :bigint           not null, primary key
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_forum_threads_on_user_id  (user_id)
#
class ForumThread < ApplicationRecord
  has_many :forum_posts
  belongs_to :user
end
