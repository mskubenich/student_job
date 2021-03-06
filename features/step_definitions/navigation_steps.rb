Given /^User "([^\"]*)" with password "([^\"]*)" exist$/ do |email, password|
  create :user, email: email, password: password, password_confirmation: password
end

Given /^I am on the login page$/ do
  visit root_path
  click_on 'Login'
end

Given /^I am on the admin users page$/ do
  visit root_path
  find('[href="#admin/users"]').click
end

Given /^I am on the admin articles page$/ do
  visit root_path
  page.execute_script("window.location.hash = 'admin/articles'")
end

# When /^I go to (.+)$/ do |page_name|
#   visit path_to(page_name)
# end
#
When /^I press "([^\"]*)"$/ do |button|
  find("input[type=submit]").click
end

When /^I click "([^\"]*)"$/ do |link|
  click_on(link)
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field.gsub(' ', '_'), :with => value)
end
#
# When /^I fill in "([^\"]*)" for "([^\"]*)"$/ do |value, field|
#   fill_in(field.gsub(' ', '_'), :with => value)
# end
#
#
# When /^I fill in the following:$/ do |fields|
#   fields.rows_hash.each do |name, value|
#     When %{I fill in "#{name}" with "#{value}"}
#   end
# end
#
# When /^I select "([^\"]*)" from "([^\"]*)"$/ do |value, field|
#   select(value, :from => field)
# end
#
# When /^I check "([^\"]*)"$/ do |field|
#   check(field)
# end
#
# When /^I uncheck "([^\"]*)"$/ do |field|
#   uncheck(field)
# end
#
# When /^I choose "([^\"]*)"$/ do |field|
#   choose(field)
# end

Then /^I should see "([^\"]*)"$/ do |text|
  expect(page).to have_content(text)
end
#
# Then /^I should see \/([^\/]*)\/$/ do |regexp|
#   regexp = Regexp.new(regexp)
#   page.should have_content(regexp)
# end
#
# Then /^I should not see "([^\"]*)"$/ do |text|
#   page.should_not have_content(text)
# end
#
# Then /^I should not see \/([^\/]*)\/$/ do |regexp|
#   regexp = Regexp.new(regexp)
#   page.should_not have_content(regexp)
# end
#
# Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
#   find_field(field).value.should =~ /#{value}/
# end
#
# Then /^the "([^\"]*)" field should not contain "([^\"]*)"$/ do |field, value|
#   find_field(field).value.should_not =~ /#{value}/
# end
#
# Then /^the "([^\"]*)" checkbox should be checked$/ do |label|
#   find_field(label).should be_checked
# end
#
# Then /^the "([^\"]*)" checkbox should not be checked$/ do |label|
#   find_field(label).should_not be_checked
# end
#
# Then /^I should be on (.+)$/ do |page_name|
#   current_path.should == path_to(page_name)
# end

Then /^I see (.+) alert '(.+)'$/ do |type, message|
  page.has_css?(".sj-alert-#{type}", :text => message, :visible => true)
end

When /^I accept the confirmation/ do
  sleep 1 # prevent test from failing by waiting for popup
  if page.driver.class == Capybara::Selenium::Driver
    # page.driver.browser.switch_to.alert.text.should eq(title)
    page.driver.browser.switch_to.alert.accept
  elsif page.driver.class == Capybara::Webkit::Driver
    # page.driver.browser.confirm_messages.should eq(title)
    page.driver.browser.accept_js_confirms
  else
    raise "Unsupported driver"
  end
end