require 'rspec'
require 'page-object'
require 'data_magic' #uses config/data
require 'require_all'

require_rel 'pages'

# default route for adopting single puppy
PageObject::PageFactory.routes = {
  default: [[HomePage, :select_puppy],
            [DetailsPage, :add_to_cart],
            [ShoppingCartPage, :proceed_to_checkout],
            [CheckoutPage, :checkout]],
}


World(PageObject::PageFactory)
