require 'spec_helper'

describe Story do 
  
  it { should belong_to(:user) }
  it { should have_many(:user_votes).through(:votes) }

  describe "#total_votes" do
    let(:story){ FactoryGirl.create(:story) }
    before do
      FactoryGirl.create(:vote, story: story, choice: -1) 
      FactoryGirl.create(:vote, story: story, choice: 1)
      FactoryGirl.create(:vote, story: story, choice: 1)
    end

    it "should total the votes for a given story" do
      expect(story.total_votes).to eq(1)
    end
  end
end