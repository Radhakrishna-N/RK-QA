class StartPage
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/start')
	link(:create_athlete_profile_tab, :text => 'Create Athlete Profile')
	link(:create_your_athlete_Profile, :href => '/wizards/member_athlete/claimathlete')

	def verify_caw_tab_visibility
		if  
			Watir::Wait.until { @browser.a(:text => "Create Athlete Profile").exists? }
			puts "User can proceed with CAW wizard"

		else
    		puts "User already has member-athelete profile"	
    	end
 	end

	def verify_showcase_summary
    	@browser.p(:text => 'Showcase your achievements and involvement in any level of sports, from organized to recreational.').wait_until_present
	end


	def verify_showcase_items_presence
    	Watir::Wait.until { @browser.ul(:class => 'info-list').exists? }
    	#Watir::Wait.until { @browser.ul(:class => 'icon-awards').exists? }
    	#Watir::Wait.until { @browser.ul(:class => 'icon-images').exists? }
    	#Watir::Wait.until { @browser.ul(:class => 'icon-teams').exists? }
    	#Watir::Wait.until { @browser.ul(:class => 'icon-members').exists? }
	end

	def click_on_create_athlete_profile
		@browser.a(:href => '/wizards/member_athlete/claimathlete').when_present.click
	end

	def scroll_up_page
        @browser.send_keys(:home)
    end
end








