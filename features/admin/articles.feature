@javascript
Feature: Admin Articles
  In order to get in touch
  An admin
  Should have an ability to manage articles

  Scenario: View articles list for admin
    Given I logged in as an admin with email 'admin@sj.com'
    And A minimal set of articles exist
    When I am on the admin articles page
    Then I see articles list:
      |We are open !|
      |Welcome to our site !|

  Scenario: Student can not view articles list
    Given I logged in as a student with email 'student@sj.com'
    When I am on the admin articles page
    Then I see danger alert 'Admin only allowed to view this page !'

  Scenario: Recruiter can not view articles list
    Given I logged in as a recruiter with email 'recruter@sj.com'
    When I am on the admin articles page
    Then I see danger alert 'Admin only allowed to view this page !'

  Scenario: Not logged in users can not view articles list
    When I am on the admin articles page
    Then I see danger alert 'Admin only allowed to view this page !'