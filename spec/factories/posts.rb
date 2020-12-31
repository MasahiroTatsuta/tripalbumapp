FactoryBot.define do
  factory :post do
    sequence(:caption) { 'My important note.' }
    sequence(:address) { 'ベルリン' }
    association :user
  end
end
