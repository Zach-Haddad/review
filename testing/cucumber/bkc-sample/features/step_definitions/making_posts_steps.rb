require 'rspec'

Given(/^I am on the home page$/) do
  visit(PostsIndexPage)
end

Given(/^I log in$/) do
  on(PostsIndexPage).sign_in #open modal
  on(PostsIndexPage).sign_in_as_test_account
end

Given(/^I click on a post$/) do
  pending
end

When(/^I post a comment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see my comment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Edit Comment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Delete Comment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click Create Post$/) do
  on(PostsIndexPage).create_post #open modal
end

When(/^I make a post with the title of "([^"]*)" and a body of "([^"]*)"$/) do |title, body|
  on(PostsIndexPage).make_sample_post(title, body)
end

Then(/^I should see the title "([^"]*)" and body "([^"]*)"$/) do |title, body|
  expect(on(PostPage).post_title).to include title
  expect(on(PostPage).post_body).to include body
end

Then(/^I should see a link to Edit Post$/) do
  expect(on(PostPage).edit_post_element).to be_truthy
end

Then(/^I should see a link to Delete Post$/) do
  expect(on(PostPage).delete_post_element).to be_truthy
end

Then(/^I should see a form to comment$/) do
  expect(on(PostPage).comment_body_element).to be_truthy
end

When(/^I click Delete Post$/) do
  on(PostPage).delete_my_post
end

Then(/^I should see the notice "([^"]*)"$/) do |notice_message|
  expect(on(PostsIndexPage).notices_element).to include notice_message
end

Then(/^I should be redirected to the posts index$/) do
  expect(on(PostsIndexPage).posts_index).to be_truthy
end

When(/^I click Edit Post$/) do
  on(PostPage).edit_post
end

When(/^I edit the post$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
