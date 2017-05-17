require_relative '../../../adoption_helper'
require 'rspec'
include AdoptionHelper

Given(/^I am on the puppy adoption site$/) do
  goto_adoption_site
  @home = HomePage.new(@browser)
end

# Adoption

When(/^I click the first View Details button$/) do
  @home.select_puppy_number 1
  @details = DetailsPage.new(@browser)
end

When(/^I click the second View Details button$/) do
  @home.select_puppy_number 2
  @details = DetailsPage.new(@browser)
end

When(/^I click the Adopt Me button$/) do
  @details.add_to_cart
  @cart = ShoppingCartPage.new(@browser)
end

When(/^I click the Adopt Another Puppy button$/) do
  @cart.continue_shopping
end

When(/^I click the Complete the Adoption button$/) do
  @cart.proceed_to_checkout
  @checkout = CheckoutPage.new(@browser)
end

When(/^I enter "([^"]*)" in the name field$/) do |name|
  @checkout.name = name
end

When(/^I enter "([^"]*)" in the address field$/) do |address|
  @checkout.address = address
end

When(/^I enter "([^"]*)" in the email field$/) do |email|
  @checkout.email = email
end

When(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  @checkout.pay_type = pay_type
end

When(/^I click the Place Order button$/) do
  @checkout.place_order
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(@browser.text).to include(text)
end

# Cart Verification

Then(/^I should see "([^"]*)" as the name for item (\d+)$/) do |name, line_item|
  expect(@cart.line_item_name(line_item.to_i)).to include name
end

Then(/^I should see "([^"]*)" as the subtotal for item (\d+)$/) do |subtotal, line_item|
  expect(@cart.line_item_subtotal(line_item.to_i)).to eql subtotal
end

Then(/^I should see "([^"]*)" as the cart total$/) do |total|
  expect(@cart.cart_total).to eql total
end
