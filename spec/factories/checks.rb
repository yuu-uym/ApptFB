FactoryBot.define do
  factory :check do
    title     { Faker::Lorem.sentence }
    item1     { Faker::Lorem.sentence }
    association :user
  end
end
