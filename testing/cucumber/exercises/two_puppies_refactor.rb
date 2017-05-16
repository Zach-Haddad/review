require 'Watir'
@browser = Watir::Browser.new :chrome
@browser.goto 'http://puppies.herokuapp.com'

def adopt_puppy(puppy_index)
  @browser.button(value: 'View Details', index: puppy_index).click
  @browser.button(value: 'Adopt Me!').click
end

def checkout(name, address, email, payment_method)
  @browser.text_field(name: 'order[name]').set(name)
  @browser.textarea(name: 'order[address]').set(address)
  @browser.text_field(name: 'order[email]').set(email)
  @browser.select_list(name: 'order[pay_type]').select(payment_method)
  @browser.button(value: 'Place Order').click
end


adopt_puppy(0)
@browser.button(value: 'Adopt Another Puppy').click
adopt_puppy(1)
@browser.button(value: 'Complete the Adoption').click
checkout('Zach', '123 Fake st', 'sample@sample.com', 'Check')
