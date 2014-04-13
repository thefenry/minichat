FactoryGirl.define do

  factory :user do
    email Faker::Internet.free_email
    username Faker::Lorem.word
    password '1234'
    password_confirmation '1234'
  end
  
end