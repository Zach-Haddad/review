class LoginPage
  include PageObject

  text_field(:username, id: 'name')
  text_field(:password, id: 'password')
  button(:login, value: 'Login')

  page_url 'http://puppies.herokuapp.com/admin'

  def login_as_admin(username = 'admin', password = 'password')
    self.username = username
    self.password = password
    login
  end
end
