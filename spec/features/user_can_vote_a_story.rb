require 'spec_helper'

describe "User can vote on a story" do
  let!(:user) { FactoryGirl.create(:user) }

  let!(:story){ FactoryGirl.create(:story) }
  
  it "allows users to vote" do

    visit root_path
    login(user)
    click_link "Home"

    expect(page).to have_content "#{story.url}"
    click_link "upvote"
    expect(page).to_not have_content("upvote" || "downvote")
    
  end

  def login(user)
    visit root_path
    click_link "Login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end

end