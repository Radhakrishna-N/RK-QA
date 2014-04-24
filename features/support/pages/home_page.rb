class HomePage
  include PageObject
 	page_url("http://s195.qa1.mobile.sport195.com")  	
  	link(:proceed_to_log_in, :css => '.current-page .btn-login')

=begin
 def wait_for_load
    @browser.div(href: '/signin').wait_until_present
 end
=end

=begin	
 def wait_for_load
    Watir::Wait.until { @browser.div(:href => '/signin').exists? }
  end
end
=end

end
