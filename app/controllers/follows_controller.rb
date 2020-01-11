class FollowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question


  def follow_topic
    @follow = FollowTopic.new(follower_id: current_user.id, followed_topic_id: @question.topic_id)

    respond_to do |format|
      if @follow.save
        format.html { redirect_to @question, notice: 'You started Following this Topic' }
        format.json { render :show, status: :created, location: @follow }
      else
        format.html { redirect_to @question, notice: @follow.errors.messages.values.flatten.first.to_s }
        format.json { render json: @follow.errors, status: :unprocessable_entity }
      end
    end
  end


  def follow_user
    @follow = FollowUser.new(follower_id: current_user.id, followed_user_id: @question.user_id)

    respond_to do |format|
      if @follow.save
        format.html { redirect_to @question, notice: 'You started Following this User' }
        format.json { render :show, status: :created, location: @follow }
      else
        format.html { redirect_to @question, notice: @follow.errors.messages.values.flatten.first.to_s }
        format.json { render json: @follow.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def set_question
    @question = Question.find_by(id: params[:question_id])
  end

  
end
