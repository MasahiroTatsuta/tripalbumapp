FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "TEST#{n}@example.com" }
    sequence(:name) { |n| "TEST_NAME#{n}" }
    sequence(:username) { |n| "TEST_USERNAME#{n}" }
    sequence(:password) { |n| "TEST_PASSWORD#{n}" }
  end
end
