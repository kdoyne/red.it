class VotesController < ApplicationController

  def create_upvote
    @story = Story.find(params[:story])
    @vote = Vote.new
    @vote.user = current_user
    @vote.choice = 1
    @vote.story = @story
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

end