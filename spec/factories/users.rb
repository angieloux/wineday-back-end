FactoryBot.define do
  factory :user do
    username { "mrtest" }
    email { "test@testing.com" }
    password { "password1" }
    password_confirmation { "password1" }
  end
end
