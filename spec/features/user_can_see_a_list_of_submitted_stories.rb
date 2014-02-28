require 'spec_helper'

describe "a user can see submitted stories" do

  let!(:story_1){ FactoryGirl.create(:story)}
  let!(:story_2){ FactoryGirl.create(:story)}
  let!(:story_3){ FactoryGirl.create(:story)}

  it "shows submitted stories in a list" do

    visit root_path
    expect(page).to have_content "#{story_1.url}"
    expect(page).to have_content "#{story_2.url}"
    expect(page).to have_content "#{story_3.url}"

  end

end