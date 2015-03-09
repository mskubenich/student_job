Given /^I see users list$/ do
  # TODO improve
  expect(page).to have_content(@admin.email)
end