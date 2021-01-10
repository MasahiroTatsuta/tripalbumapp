FactoryBot.define do
  factory :post do
    sequence(:caption) { 'My important note.' }
    sequence(:address) { '皇居' }

    association :user
  end
end
