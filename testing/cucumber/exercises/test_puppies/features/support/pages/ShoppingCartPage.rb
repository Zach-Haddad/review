class ShoppingCartPage

  def initialize(browser)
    @browser = browser
  end

  def row_for(line_item)
    (line_item - 1) * 6
  end

  def cart_line_item(line_item)
    @browser.table(index: 0)[row_for(line_item)]
  end

  def line_item_subtotal(line_item)
    cart_line_item(line_item.to_i)[3].text
  end

  def line_item_name(line_item)
    cart_line_item(line_item.to_i)[1].text
  end

  def cart_total
    @browser.td(class: 'total_cell').text
  end

end
