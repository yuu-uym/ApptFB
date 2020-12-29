FactoryBot.define do
  factory :appointment do
    company       { Faker::Lorem.sentence }
    appt_date     { '2020-04-18' }
    result_id     { Faker::Number.between(from: 0, to: 4) }
    association :user
    association :check
    check_id       {"1"}
  end
end
