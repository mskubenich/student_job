@javascript
Feature: Admin Users
  In order to get in touch
  An admin
  Should have an ability to manage users

  Scenario: View users list
    Given I logged in as admin
    When I am on the admin users page
    Then I see users list