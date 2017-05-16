require_relative '../../../adoption_helper'
require 'rspec'
include AdoptionHelper

Given(/^I am on the puppy adoption site$/) do
  goto_adoption_site
end

# Adoption

When(/^I click the first View Details button$/) do
  @browser.button(value: 'View Details', index: 0).click
end

When(/^I click the second View Details button$/) do
  @browser.button(value: 'View Details', index: 1).click
end

When(/^I click the Adopt Me button$/) do
  @browser.button(value: 'Adopt Me!').click
end

When(/^I click the Adopt Another Puppy button$/) do
  @browser.button(value: 'Adopt Another Puppy').click
end

When(/^I click the Complete the Adoption button$/) do
  @browser.button(value: 'Complete the Adoption').click
end

When(/^I enter "([^"]*)" in the name field$/) do |name|
  @browser.text_field(name: 'order[name]').set(name)
end

When(/^I enter "([^"]*)" in the address field$/) do |address|
  @browser.textarea(name: 'order[address]').set(address)
end

When(/^I enter "([^"]*)" in the email field$/) do |email|
  @browser.text_field(name: 'order[email]').set(email)
end

When(/^I select "([^"]*)" from the pay with dropdown$/) do |payment_method|
  @browser.select_list(name: 'order[pay_type]').select(payment_method)
end

When(/^I click the Place Order button$/) do
  @browser.button(value: 'Place Order').click
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(@browser.text).to include(text)
end

# Cart Verification

Then(/^I should see "([^"]*)" as the name for item (\d+)$/) do |name, line_item|
  row = checkout_row_offset(line_item)
  expect(@browser.table(index: 0)[row][1].text).to include name
end

Then(/^I should see "([^"]*)" as the subtotal for item (\d+)$/) do |subtotal, line_item|
  row = checkout_row_offset(line_item)
  expect(@browser.table(index: 0)[row][3].text).to eql subtotal
end

Then(/^I should see "([^"]*)" as the cart total$/) do |total|
  expect(@browser.td(class: 'total_cell').text).to eql total
end
