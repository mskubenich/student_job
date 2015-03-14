FactoryGirl.define do
  factory :role do
    factory :admin_role do
      name 'admin'
    end

    factory :student_role do
      name 'student'
    end

    factory :recruiter_role do
      name 'recruiter'
    end
  end
end