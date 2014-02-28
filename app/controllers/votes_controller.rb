class Votes < ApplicationController

  def create_upvote
    @vote = Vote.new(vote_params)
    @vote.user = current_user
    @vote.choice = 1
    @vote.save
    redirect_to root_path 
  end

  def create_downvote
    @vote = Vote.new(vote_params)
    @vote.user = current_user
    @vote.choice = -1
    @vote.save

    redirect_to root_path 
  end

  private

  def vote_params
    params.permit(:story_id)
  end

end