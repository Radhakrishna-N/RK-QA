class LoginPage
	include PageObject
		page_url('http://s195.qa1.mobile.sport195.com/signin')
		text_field(:username, :id => 'email')
  	text_field(:password, :id => 'password')
  	button(:click_login_button, :css=>".btn-login")

    #brwoser.element(:css=>".btn-login").click
  		
  		def login (username,password)
    	self.username = username
    	self.password = password
      end

      #def login_button
      #self.click_login_button.click
      #end
end
