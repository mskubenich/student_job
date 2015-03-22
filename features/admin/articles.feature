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

  Scenario: Article validations
    Given I logged in as an admin with email 'admin@sj.com'
    When I am on the admin articles page
    Then I go to new article page
    When I press "Save"
    Then I see article validation errors

  Scenario: Creating articles
    Given I logged in as an admin with email 'admin@sj.com'
    When I am on the admin articles page
    Then I go to new article page
    And I fill in "title" with "Test Article"
    And I fill body with "Article Body"
    When I press "Save"
    Then Article titled "Test Article" should be created

  Scenario: View articles list for admin
    Given I logged in as an admin with email 'admin@sj.com'
    And A minimal set of articles exist
    When I am on the admin articles page
    And I remove first article
    And I accept the confirmation
    Then Article "We are open !" should be destroyed