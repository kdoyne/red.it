require "spec_helper"

describe "User can submit a story" do 
  let!(:user) { FactoryGirl.create(:user) }
  it "can submit a story and it will appear on the index" do 

    login(user)
    click_link "Home"
    click_link "Submit Story"
    #save_and_open_page
    fill_in :story_url, with: "http://generalassemb.ly"
    click_button "Create Story"
    expect(page).to have_content "http://generalassemb.ly"



  end


  def login(user)
    visit root_path
    click_link "Login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end
end