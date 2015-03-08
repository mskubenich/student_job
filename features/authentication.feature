@javascript
Feature: Log In
  In order to get in touch
  A visitor
  Should have an ability to login

  Scenario: Sends a contact message
    Given User "indiana.jones@sample.com" with password "secret" exist
    And I am on the login page
    And I fill in "session[email]" with "indiana.jones@sample.com"
    And I fill in "session[password]" with "secret"
    When I press "Submit"
    Then I should see "Hello indiana.jones@sample.com"