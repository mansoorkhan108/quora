class FollowUser < ApplicationRecord
  belongs_to :follower, foreign_key: :follower_id, class_name: 'User'
  belongs_to :followed_user, foreign_key: :followed_user_id, class_name: 'User'

  validates :followed_user_id, uniqueness: {scope: :follower_id, message: 'already following'}

end
