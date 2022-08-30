FactoryBot.define do
  factory :city do
    name { Faker::Beer.name }
    full_name {Faker::Lorem.sentence}
    summary {Faker::Number.decimal(l_digits: 2)}
    scores {Faker::Number.between(from: 1, to: 10)}
    details {Faker::Number.between(from: 1, to: 10)}
  end
end
