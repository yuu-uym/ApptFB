FactoryBot.define do
  factory :user do
    name     { Faker::Name.last_name }
    email    { Faker::Internet.free_email }
    joined   {'2011'}
    password {'1234abcd' }
  end
end
