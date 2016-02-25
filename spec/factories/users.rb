require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    full_description { Faker::Name.title }
    email { Faker::Internet.safe_email }
    pass = Faker::Internet.password(10)
    password { pass }
    password_confirmation { pass }
  end

end
