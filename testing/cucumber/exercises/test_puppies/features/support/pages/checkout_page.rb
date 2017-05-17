require_relative 'error_panel'

class CheckoutPage
  # with PageObject gem
  include PageObject
  include DataMagic #default data stored in config/data/default.yml
  include ErrorPanel

  text_field(:name, id: "order_name")
  textarea(:address, id: "order_address")
  text_field(:email, id: "order_email")
  select_list(:pay_type, id: "order_pay_type")
  button(:place_order, value: "Place Order")

  def checkout(data = {})
    populate_page_with data_for(:checkout_page, data)
    place_order
  end

  # def checkout(data = {})
  #   populate_page_with DEFAULT_DATA.merge(data)
  #   place_order
  # end

  # def checkout(data={})
  #   self.name = data['name']
  #   self.address = data['address']
  #   self.email = data['email']
  #   self.pay_type = data['pay_type']
  #   place_order
  # end

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
