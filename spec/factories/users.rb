FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "user_#{n}@gmail.com" }
    password                      'password'
    password_confirmation         'password'
    first_name                    'Indiana'
    last_name                    'Jones'
  end
end