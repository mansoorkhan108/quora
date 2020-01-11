class FollowTopic < ApplicationRecord
  belongs_to :follower, foreign_key: :follower_id, class_name: 'User'
  belongs_to :followed_topic, foreign_key: :followed_topic_id, class_name: 'Topic'

  validates :followed_topic_id, uniqueness: {scope: :follower_id, message: 'already following'}

end
