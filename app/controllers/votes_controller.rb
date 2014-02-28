class VotesController < ApplicationController

  def create_upvote
    binding.pry
    @vote = Vote.new(params[:story])
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
    params.permit(:story)
  end

end