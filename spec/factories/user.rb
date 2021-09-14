FactoryBot.define do
  factory :user do
    full_name { 'test Name' }
    email { "test@gmail.com" }
    password { "111111" }
    password_confirmation { "111111" }
  end
end