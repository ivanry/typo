Feature: Merge Article
  As an administrator
  in order to keep content concise
  I can merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the new article page
    And I fill in "article_title" with "Article for merge 1"
    And I fill in "article__body_and_extended_editor" with "AAA"
    And I press "Publish"
#    And I add comment "comment1"

    And I am on the new article page
    And I fill in "article_title" with "Article for merge 2"
    And I fill in "article__body_and_extended_editor" with "CCC"
    And I press "Publish"
#    And I add comment "comment2"

#
#
#    Then I should be on the admin content page
#    When I go to the home page
#    Then I should see "Foobar"
#    When I follow "Foobar"
#    Then I should see "Lorem Ipsum"


  Scenario: Edit article page shown
    Given I am on the edit page for "Article for merge 1"
    Then I should see "New Article"
    And I should see "AAA"
    And I should see "Merge Articles"

    And I fill in "merge_with" with "Art ID"
    And I press "Merge"
    Then I should be on the admin content page
    When I am on the edit page for "Article for merge 1"
    Then I should see "AAA"
    And I should see "BBB"
#    And I should see "comment1"
#    And I should see "comment2"
#    And I should see author ""





