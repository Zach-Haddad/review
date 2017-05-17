class CheckoutPage
  def initialize(browser)
    @browser = browser
  end

  def address=(address)
    @browser.textarea(name: 'order[address]').set(address)
  end

  def name=(name)
    @browser.text_field(name: 'order[name]').set(name)
  end

  def email=(email)
    @browser.text_field(name: 'order[email]').set(email)
  end

  def pay_type=(pay_type)
    @browser.select_list(name: 'order[pay_type]').select(pay_type)
  end

  def place_order
    @browser.button(value: 'Place Order').click
  end
end
