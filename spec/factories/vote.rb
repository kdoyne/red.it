FactoryGirl.define do
  factory :vote do
    association :story
    association :user
    choice [-1,0,1].sample
  end
end