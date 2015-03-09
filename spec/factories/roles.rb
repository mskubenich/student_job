FactoryGirl.define do
  factory :role do
    factory :admin_role do
      name 'admin'
    end

    factory :seeker_role do
      name 'seeker'
    end

    factory :recruiter_role do
      name 'recruiter'
    end
  end
end