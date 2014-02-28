require 'spec_helper'

describe "a user can log out" do 
  let!(:user) { FactoryGirl.create(:user) }
  it "can log out" do
    visit root_path
    click_link "Login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
    #save_and_open_page
    click_link "Log Out"

    expect(page).to have_content "Login"

  end

end