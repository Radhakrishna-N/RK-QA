class ClaimAthletePage
	include PageObject
    page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/claimathlete')
    link(:skip, :href => '/wizards/member_athlete/level')
    
    def check_match_profiles
        if 
            @browser.url.include? "wizards/member_athlete/claimathlete"
            sleep(5)
            puts "You have matched profile"
            @browser.div(:class => 'content-container').h2.text
            @browser.p(:text => 'You may have been added as an athlete by another member or coach. If you are none of these athletes listed below, tap here').wait_until_present
            @browser.a(:href => '/wizards/member_athlete/level').when_present.click
        else
            puts " You Dont have any matched profile on platform"
            Watir::Wait.until { browser.url.include? "wizards/member_athlete/level"}
        end

    end




=begin
    def verify_claim_message
    	@browser.div(:class => 'content-container').h2.text
    end

    def verify_claim_text
    	@browser.p(:text => 'You may have been added as an athlete by another member or coach. If you are none of these athletes listed below, tap here').wait_until_present
 	end

	def click_on_skip
		@browser.a(:href => '/wizards/member_athlete/level').when_present.click
	end
=end

    def scroll_up_page
        @browser.send_keys(:home)
    end
end