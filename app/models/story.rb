class Story < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  has_many :user_votes ,through: :votes, source: :user
  has_many :choices, through: :votes

  def total_votes
    votes.sum(:choice)
  end

end