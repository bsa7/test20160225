require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    full_description { Faker::Name.title }
    email {Faker::Internet.email}
  end
end
