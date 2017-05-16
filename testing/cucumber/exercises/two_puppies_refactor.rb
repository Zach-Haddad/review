require 'Watir'
require_relative 'adoption_helper'
include AdoptionHelper

goto_adoption_site
adopt_puppy(0)
continue_adopting
adopt_puppy(1)
finish_adopting
checkout('Zach', '123 Fake st', 'sample@sample.com', 'Check')
verify_page_contains('Thank you for adopting a puppy!')
close_browser
