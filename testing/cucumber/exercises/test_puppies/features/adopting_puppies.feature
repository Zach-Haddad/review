Feature: Adopting Puppies
  As a dog lover
  I want to adopt puppies
  So I can be a more fulfilled person

  Scenario: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Zach" in the name field
    And I enter "123 Fake Street" in the address field
    And I enter "sample@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"
