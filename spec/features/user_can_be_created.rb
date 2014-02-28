require 'spec_helper'

describe "user can be created" do 

  it "can go to new user page and sign up" do 
    visit root_path 
    click_link "Sign Up"
    #save_and_open_page
    fill_in :user_email, with: "email@email.com"
    fill_in :user_username, with: "username"
    fill_in :user_password, with: "password"
    fill_in :user_password_confirmation, with: "password"
    click_button "Create User"

    expect(page).to have_content "username"

  end
end