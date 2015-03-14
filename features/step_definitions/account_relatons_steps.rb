Given /^I logged in as an admin with email '(.+?)'$/ do |email|
  @admin = create :admin, email: email
  step 'I am on the login page'
  step "I fill in \"session[email]\" with \"#{ @admin.email }\""
  step "I fill in \"session[password]\" with \"password\""
  step "I press \"Submit\""
  sleep 1
end

Given /^I logged in as a student with email '(.+?)'$/ do |email|
  @student = create :student
  step 'I am on the login page'
  step "I fill in \"session[email]\" with \"#{ @student.email }\""
  step "I fill in \"session[password]\" with \"password\""
  step "I press \"Submit\""
  sleep 1
end

Given /^I logged in as a recruiter with email '(.+?)'$/ do |email|
  @recruiter = create :recruiter
  step 'I am on the login page'
  step "I fill in \"session[email]\" with \"#{ @recruiter.email }\""
  step "I fill in \"session[password]\" with \"password\""
  step "I press \"Submit\""
  sleep 1
end