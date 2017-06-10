Feature: Making Posts
  As a user
  I want to make posts
  So that others may read them

  Background:
    Given I am on the home page
      And I log in

    # Scenario: Making a post
    #   When I click Create Post
    #   And I make a post with the title of "Hello" and a body of "world"
    #   Then I should see the title "Hello" and body "world"
    #   And I should see a link to Edit Post
    #   And I should see a link to Delete Post
    #   And I should see a form to comment

    Scenario: Deleting a post
      When I click Create Post
      And I make a post with the title of "Hello" and a body of "world"
      # And I click Delete Post
      # Then I should see the notice "Post deleted"
      # NOTE: Unable to get pageobject to confirm rails modal
      # Then I should be redirected to the posts index

    # Scenario: Editing a post
    #   When I click Create Post
    #   And I make a post
    #   And I click Edit Post
    #   And I edit the post
    #   Then I should see the notice "Post Updated"
