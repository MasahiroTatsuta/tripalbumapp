FactoryBot.define do
  factory :post do
    sequence(:caption) { 'My important note.' }
    association :user
  end
end
