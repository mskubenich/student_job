FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "user_#{n}@gmail.com" }
    roles { [FactoryGirl.create(:student_role)] }
    password                      'password'
    password_confirmation         'password'
    first_name                    'Indiana'
    last_name                     'Jones'

    factory :admin do
      sequence(:email){|n| "admin_#{n}@gmail.com" }
      roles { [create(:admin_role)] }
    end

    factory :student do
      sequence(:email){|n| "seeker_#{n}@gmail.com" }
      roles { [create(:student_role)] }
    end

    factory :recruiter do
      sequence(:email){|n| "recruiter_#{n}@gmail.com" }
      roles { [create(:recruiter_role)] }
    end
  end
end