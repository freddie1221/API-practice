FactoryBot.define do
  factory :post do
    message { Faker::Lorem.word }
  end
end