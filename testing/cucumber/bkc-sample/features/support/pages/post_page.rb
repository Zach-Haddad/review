require_relative 'navbar'

class PostPage
  include PageObject
  include Navbar

  link(:edit_post, text: "Edit Post")
  link(:delete_post, text: "Delete Post")

  h3(:post_title, id: "post-title")
  paragraph(:post_body, id: "post-body")

  textarea(:comment_body, name: "comment[body]")
  button(:submit_comment, value: "Submit")

  def delete_my_post
    confirm(true) { :delete_post }
  end
end
