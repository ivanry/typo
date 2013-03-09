Feature: Merge Article
  As an article author
  in order to protect content
  I can't merge articles

  Background:
    Given the blog is set up
    And I am logged into the publisher panel
    And I am on the new article page
    And I fill in "article_title" with "Author's text for merge"
    And I fill in "article__body_and_extended_editor" with "BBB"
    And I press "Publish"

  Scenario: Edit article page shown
    Given I am on the edit page for "Author's text for merge"
    Then I should see "New Article"
    And I should see "BBB"
    And I should not see "Merge Articles"

