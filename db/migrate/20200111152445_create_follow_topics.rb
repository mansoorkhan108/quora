class CreateFollowTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_topics do |t|
      t.integer :follower_id
      t.integer :followed_topic_id
    end
  end
end
