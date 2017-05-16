require 'Watir'

browser = Watir::Browser.new :chrome
browser.goto 'http://puppies.herokuapp.com'
browser.button(value: 'View Details', index: 1).click
browser.button(value: 'Adopt Me!').click
browser.button(value: 'Complete the Adoption').click

browser.text_field(name: 'order[name]').set('Zach')
browser.textarea(name: 'order[address]').set('123 Fake St')
browser.text_field(name: 'order[email]').set('sample@sample.com')
browser.select_list(name: 'order[pay_type]').select('Check')

browser.button(value: 'Place Order').click

fail 'Failed to adopt puppy' unless browser.text.include? 'Thank you for adopting a puppy!'
