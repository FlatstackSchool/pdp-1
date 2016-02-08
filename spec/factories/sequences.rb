FactoryGirl.define do
  sequence(:email) { Faker::Internet.email }
  sequence(:title) { |n| "#{Faker::Lorem.sentence} #{n}" }
end
