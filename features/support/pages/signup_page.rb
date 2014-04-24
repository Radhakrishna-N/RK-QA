class Signuppage
	include PageObject
page_url("http://s195.qa1.mobile.sport195.com/sign_up/info")
text_field(:first_name, :class=>'span2 first_name')
text_field(:last_name,:class=> 'span2 last_name')
text_field(:email_id, :class=> 'span2 email')
text_field(:password,:class=> 'span2 password')

	def first_name (firstname)
		self.first_name = firstname
	end

	def last_name (lastname)
        self.last_name = lastname
	end

	def email_id (emailid)
		self.email_id = emailid
	end

	def password (password)
		self.password = password
	end

	def  gender 
		browser.radio(:value => "M").set
    end

	def age
		browser.checkbox(:value => "age-checked").set
	    browser.driver.manage.timeouts.implicit_wait = 3
	end

    def sign_up
     @browser.link(:href => '/sign_up/thank_you').click
    end

    def my_feed
    	@browser.link(:text => 'My Feed').when_present.click
    end


    def log_out
      @browser.link(:href => '/logout').click
      @browser.div(:class => 'btn btn-danger btn-logout').click
    end  
end
    ''