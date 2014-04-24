class CheckProfilePage
	include PageObject
    def check_the_match_profile
    	if
    	   @browser.url.include? "member_athlete/claimathlete"
    	   sleep(4)    	   
   	       puts "You got Matched your Matched profiles"    	
    	else
    		Watir::Wait.until{"wizards/member_athlete/level"}
    	end
    end
end