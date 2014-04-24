class ProfileSearchPage
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/location')
	link(:proceed_to_chooseorg, :class => 'btn-next')

	def verify_url
    	Watir::Wait.until { browser.url.include? "wizards/member_athlete/location"}
    end

	def select_country=(country)
		@browser.element(:css => '.current-page input.autocomplete-input').to_subtype.set(country)
		#@browser.send_keys(:space)
    	sleep(10)
    	@browser.li(:text => "#{country}").when_present.click
    	#Watir::Wait.until{@browser.element(:text => 'United States').exists?}
    	
    end

	def select_region=(region)
		@browser.element(:xpath => "//*[@id='content']/div/div[2]/div/div[2]/span/div/input").to_subtype.set(region)
    	@browser.li(:text => "#{region}").when_present.click
	end  

	def select_city=(city)
		@browser.element(:xpath => "//*[@id='content']/div/div[2]/div/div[3]/span/div/input").to_subtype.set(city)
		@browser.element(:xpath => "//*[@id='content']/div/div[2]/div/div[3]/span/div/input").send_keys(:space)		
		sleep(10)
		@browser.li(:text => "#{city}").when_present.click
	end

	def scroll_up_page
        @browser.send_keys(:home)
    end
end