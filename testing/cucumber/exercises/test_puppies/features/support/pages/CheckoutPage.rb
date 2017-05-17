class CheckoutPage
  # with PageObject gem
  include PageObject

  text_field(:name, id: "order_name")
  textarea(:address, id: "order_address")
  text_field(:email, id: "order_email")
  select_list(:pay_type, id: "order_pay_type")
  button(:place_order, value: "Place Order")

  # without PageObject gem

  # def initialize(browser)
  #   @browser = browser
  # end
  #
  # def address=(address)
  #   @browser.textarea(name: 'order[address]').set(address)
  # end
  #
  # def name=(name)
  #   @browser.text_field(name: 'order[name]').set(name)
  # end
  #
  # def email=(email)
  #   @browser.text_field(name: 'order[email]').set(email)
  # end
  #
  # def pay_type=(pay_type)
  #   @browser.select_list(name: 'order[pay_type]').select(pay_type)
  # end
  #
  # def place_order
  #   @browser.button(value: 'Place Order').click
  # end
end
