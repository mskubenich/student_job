Given /^I logged in as admin$/ do
  @admin = create :admin
  step 'I am on the login page'
  step "I fill in \"session[email]\" with \"#{ @admin.email }\""
  step "I fill in \"session[password]\" with \"password\""
  step "I press \"Submit\""
  sleep 1
end