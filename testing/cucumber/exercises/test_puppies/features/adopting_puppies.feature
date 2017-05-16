Feature: Adopting Puppies
  As a dog lover
  I want to adopt puppies
  So I can be a more fulfilled person

  Background:
    Given I am on the puppy adoption site

  Scenario Outline: Adopting one puppy
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "<name>" in the name field
    And I enter "<address>" in the address field
    And I enter "<email>" in the email field
    And I select "<pay_type>" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

    Examples:
      | name    | address     | email         | pay_type    |
      | Cheezy  | 123 Main St | cheezy@aol.com| Credit card |
      | Joseph  | 555 South St| joe@guru.com  | Check       |
      | Jared   | 234 Leandog | doc@dev.com   | Check       |

  Scenario: Adopting two puppies
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I click the second View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"
