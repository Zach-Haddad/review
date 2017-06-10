Feature: Writing Comments
  As a user
  I want to write comments
  So others may read them

  Background:
    Given I am on the home page
      And I log in
      And I click on a post

      Scenario: Writing a comment
        When I post a comment
        Then I should see my comment
        And I should see Edit Comment
        And I should see Delete Comment
