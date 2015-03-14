@javascript
Feature: Admin Users
  In order to get in touch
  An admin
  Should have an ability to manage users

  Scenario: View users list for admin
    Given I logged in as an admin with email 'admin@sj.com'
    When I am on the admin users page
    Then I see users list:
      |admin@sj.com|Indiana|Jones|

  Scenario: Student can not view users list
    Given I logged in as a student with email 'student@sj.com'
    When I am on the admin users page
    Then I see danger alert 'Admin only allowed to view this page !'

  Scenario: Recruiter can not view users list
    Given I logged in as a recruiter with email 'recruter@sj.com'
    When I am on the admin users page
    Then I see danger alert 'Admin only allowed to view this page !'

  Scenario: Not logged in users can not view users list
    When I am on the admin users page
    Then I see danger alert 'Admin only allowed to view this page !'