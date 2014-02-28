class User < ActiveRecord::Base
  validates :email, {presence: true, uniqueness: true}
  validates :username, {presence: true, uniqueness: true}
  has_secure_password

  has_many :stories
  has_many :votes
  has_many :voted_stories ,through: :votes, source: :stories

end