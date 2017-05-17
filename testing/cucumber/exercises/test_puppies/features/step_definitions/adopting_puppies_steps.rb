require_relative '../../../adoption_helper'
require 'rspec'

Given(/^I am on the puppy adoption site$/) do
  visit(HomePage)
end

# Adoption

When(/^I click the View Details button for "([^"]*)"$/) do |name|
  # @home.select_puppy_number 1
  # @details = DetailsPage.new(@browser)
  on(HomePage).select_puppy name
end

When(/^I click the Adopt Me button$/) do
  # @details.add_to_cart
  # @cart = ShoppingCartPage.new(@browser)
  on(DetailsPage).add_to_cart
end

When(/^I click the Adopt Another Puppy button$/) do
  # @cart.continue_shopping
  on(ShoppingCartPage).continue_shopping
end

When(/^I click the Complete the Adoption button$/) do
  # @cart.proceed_to_checkout
  # @checkout = CheckoutPage.new(@browser)
  on(ShoppingCartPage).proceed_to_checkout
end

When(/^I enter "([^"]*)" in the name field$/) do |name|
  # @checkout.name = name
  on(CheckoutPage).name = name
end

When(/^I enter "([^"]*)" in the address field$/) do |address|
  # @checkout.address = address
  on(CheckoutPage).address = address
end

When(/^I enter "([^"]*)" in the email field$/) do |email|
  # @checkout.email = email
  on(CheckoutPage).email = email
end

When(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  # @checkout.pay_type = pay_type
  on(CheckoutPage).pay_type = pay_type
end

When(/^I click the Place Order button$/) do
  # @checkout.place_order
  on(CheckoutPage).place_order
end

Then(/^I should see "([^"]*)"$/) do |text|
  # expect(@browser.text).to include(text)
  expect(@current_page.text).to include(text)
end

# Cart Verification

Then(/^I should see "([^"]*)" as the name for item (\d+)$/) do |name, line_item|
  # expect(@cart.line_item_name(line_item.to_i)).to include name
  expect(on(ShoppingCartPage).line_item_name(line_item)).to include name
end

Then(/^I should see "([^"]*)" as the subtotal for item (\d+)$/) do |subtotal, line_item|
  # expect(@cart.line_item_subtotal(line_item.to_i)).to eql subtotal
  expect(on(ShoppingCartPage).line_item_subtotal(line_item)).to eql subtotal
end

Then(/^I should see "([^"]*)" as the cart total$/) do |total|
  # expect(@cart.cart_total).to eql total
  expect(on(ShoppingCartPage).cart_total).to eql total
end

# Chapter 5 Refactor

When(/^I complete the adoption with:$/) do |table|
  on(CheckoutPage).checkout(table.hashes.first)
end

When /^I complete the adoption using a Credit card$/ do
  on(CheckoutPage).checkout('pay_type' => 'Credit card')
end

When /^I complete the adoption$/ do
  on(CheckoutPage).checkout
end

When /^I complete the adoption of a puppy$/ do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout
end

When /^I checkout leaving the name field blank/ do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout('name' => '')
end

Then(/^I should see the error message "([^"]*)"$/) do |error|
  expect(@current_page.error_messages).to include error
end
