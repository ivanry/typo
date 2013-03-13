Feature: Merge Article
  As an administrator
  in order to keep content structured
  I can create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    Given I am on create new category page
    Then I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"
    Then I fill in "Name" with "Category1"
    And I fill in "Description" with "blah-blah"
    And I press "Save"
    Then I should be on the admin content page


