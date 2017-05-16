module AdoptionHelper
  def goto_adoption_site
    @browser = Watir::Browser.new :chrome
    @browser.goto 'http://puppies.herokuapp.com'
  end

  def adopt_puppy(puppy_index)
    @browser.button(value: 'View Details', index: puppy_index).click
    @browser.button(value: 'Adopt Me!').click
  end

  def continue_adopting
    @browser.button(value: 'Adopt Another Puppy').click
  end

  def finish_adopting
    @browser.button(value: 'Complete the Adoption').click
  end

  def checkout(name, address, email, payment_method)
    @browser.text_field(name: 'order[name]').set(name)
    @browser.textarea(name: 'order[address]').set(address)
    @browser.text_field(name: 'order[email]').set(email)
    @browser.select_list(name: 'order[pay_type]').select(payment_method)
    @browser.button(value: 'Place Order').click
  end

  def verify_page_contains(text, error = "There was an error")
    fail error unless @browser.text.include? text
  end

  def close_browser
    @browser.close
  end

  # get appropriate table row in cart given line item
  def checkout_row_offset(line_item)
    row = line_item.to_i - 1
    offset = row * 5
    row > 0 ? row + offset : row
  end
end
