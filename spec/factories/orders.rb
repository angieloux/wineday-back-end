FactoryBot.define do
  factory :order do
    number { 12345 }
    total { "9.99" }
    association :user

  end
end
