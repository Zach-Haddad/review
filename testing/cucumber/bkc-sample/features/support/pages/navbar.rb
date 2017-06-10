module Navbar
  include PageObject

  link(:home, text: "Home")

  # logged out
  link(:sign_in, id: "sign_in")
  link(:sign_up, id: "sign_up")

  # logged in
  link(:create_post, text: "Create Post")
end
