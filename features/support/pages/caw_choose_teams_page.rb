class ChooseTeamPage
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/chooseteam')
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/addteam')
	link(:proceed_to_profile, :css => '.athlete-wizard .btn-next')


#try this
def select_team
        if 
            @browser.url.include? "/member_athlete/addteam"
            sleep(2)
            puts "Adding the new team"
            @browser.div(:class => 'page-menu-info').click
                        
        else
        	puts " You selecting the existing level"
            Watir::Wait.until {@browser.url.include? "wizards/member_athlete/chooseteam"}
        	@browser.div(:class => 'page-menu-info').click
        end
    end

#try this


	#Verification methods
	def verify_url_teams
		Watir::Wait.until{@browser.url.include? "wizards/member_athlete/chooseteam"}
	end


	def wait_load_teams
		 Watir::Wait.until {@browser.div(:class => 'page-menu-info').exists?}
	end

	def wait_for_load_month
     	Watir::Wait.until{@browser.input(:class => "span2 from").exists?}
    end

=begin
	def select_school_teams
		@browser.div(:class => 'page-menu-info').click
	end
=end

    def attended_years 
		@browser.input(:class => "span2 from").to_subtype.set("2002-01")
		@browser.input(:class => "span2 to").to_subtype.set("2004-01")
	end
   
   #Jersey methods
	def wait_for_load_jersey
     	Watir::Wait.until{@browser.input(:class => "span2 jersey").exists?}
    end


    def enter_jersey(jersey)
		@browser.input(:class => "span2 jersey").to_subtype.set(jersey)
	end

  #Sport Role Methods
    def wait_for_load_role
     	Watir::Wait.until{@browser.element(:text => "Guard").exists?}
    end


	def select_sport_role
	   @browser.select_list(:class, 'select-sport-role').option(:text => "Guard").when_present.select
    end

=begin
    def scroll_up_page
        @browser.send_keys(:home)
    end
=end

end