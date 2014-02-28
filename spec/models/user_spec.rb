require 'spec_helper'

describe User do
  subject { FactoryGirl.create(:user) }
  
  it { should validate_presence_of(:email)}
  it { should validate_presence_of(:username)}
  it { should validate_uniqueness_of(:email)}
  it { should validate_uniqueness_of(:username)}
  it { should have_many(:stories)}

end