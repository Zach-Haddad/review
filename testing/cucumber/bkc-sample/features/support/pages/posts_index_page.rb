require_relative 'navbar'
require_relative 'notice_panel'
require 'faker'

class PostsIndexPage
  include PageObject
  include Navbar
  include NoticePanel

  page_url "http://bkcsample.herokuapp.com"

  div(:posts_index, class: "post-table")

  # account for Create Post modal
  text_field(:title, class: "post-title")
  textarea(:body, class: "post-body")
  button(:post_submit, id: "submit")

  # account for Sign in modal
  text_field(:email, id: "new_user_email")
  text_field(:password, id: "new_user_password")
  button(:sign_in_submit, value: "Sign in")

  def sign_in_as_test_account(email = "test@testing.com", password = "password")
    self.email = email
    self.password = password
    sign_in_submit
  end

  def make_sample_post(title = Faker::Lorem.words(6), body = Faker::Lorem.paragraph)
    self.title = title
    self.body = body
    post_submit
  end



end
