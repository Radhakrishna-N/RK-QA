class LevelPage
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/level')	
	link(:select_highschool_level, :text => 'High School')
	link(:select_University_level, :text => 'College/University')
	link(:select_club_level, :text => 'Club')
	link(:select_professional_level, :text => 'Professional')
	link(:select_social_level, :text => 'Social/With Friends')

	def verify_levels_page
		@browser.p(:text => 'Select one level where you play(ed) your sport(s).').wait_until_present
 	end

 	def verify_url_after_finishing
    	Watir::Wait.until { browser.url.include? "wizards/member_athlete/level"}
    end

    def select_level
        if 
            @browser.url.include? "wizards/member_athlete/start"
            sleep(5)
            puts "Start the wizard"
            @browser.a(:href => '/wizards/member_athlete/claimathlete').when_present.click
                        
        else
              puts " You are adding the College level as another level to profile"
              Watir::Wait.until {@browser.url.include? "wizards/member_athlete/level"}
              @browser.link(:text => "High School").click
        end
    end

    def college_level
        if 
            @browser.url.include? "wizards/member_athlete/start"
            sleep(5)
            puts "Start the wizard"
            @browser.a(:href => '/wizards/member_athlete/claimathlete').when_present.click
            			
       	else
            puts " You are adding the College level as another level to profile"
            Watir::Wait.until {@browser.url.include? "wizards/member_athlete/level"}
            @browser.link(:text => 'College/University').click
        end
    end


    def club_level
        if 
            @browser.url.include? "wizards/member_athlete/start"
            sleep(5)
            puts "Start the wizard"
            @browser.a(:href => '/wizards/member_athlete/claimathlete').when_present.click
                        
        else
            puts " You are adding the College level as another level to profile"
            Watir::Wait.until {@browser.url.include? "wizards/member_athlete/level"}
            @browser.link(:text => 'Club').click
        end
    end

            
    def league_level
        if 
            @browser.url.include? "wizards/member_athlete/start"
            sleep(5)
            puts "Start the wizard"
            @browser.a(:href => '/wizards/member_athlete/claimathlete').when_present.click
                        
        else
            puts " You are adding the Professional League level as another level to profile"
            Watir::Wait.until {@browser.url.include? "wizards/member_athlete/level"}
            @browser.link(:text => 'Professional').click
        end
    end
            
        
    def social_level
        if 
            @browser.url.include? "wizards/member_athlete/start"
            sleep(5)
            puts "Start the wizard"
            @browser.a(:href => '/wizards/member_athlete/claimathlete').when_present.click
                        
        else
            puts " You are adding the College level as another level to profile"
            Watir::Wait.until {@browser.url.include? "wizards/member_athlete/level"}
            @browser.link(:text => 'Social/With Friends').click
        end
    end
        	

    def exit_wizard
        @browser.link(:class =>"home-logo").click
    end

 	def scroll_up_page
        @browser.send_keys(:home)
    end
end

