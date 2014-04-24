class SportSelectPage
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/sports')
	link(:proceed_to_team_level_selection, :css => ".btn-next")

	def search_sport=(sport)
		@browser.text_field(:class =>'search-input').set(sport)
	    @browser.send_keys(:enter)
	end	

	def wait_for_load_sports
    	Watir::Wait.until {@browser.element(:text=>"Basketball").exists?}
    end

	def scroll_up_page
        @browser.send_keys(:home)
    end

	def select_sport
		@browser.li(:text => 'Basketball').click
		sleep(10)
	end
end