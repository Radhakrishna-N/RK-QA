class TeamLevelsPage
	include PageObject
  	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/chooseteamlevels')
  	link(:proceed_to_select_team, :href => '/wizards/member_athlete/chooseteam')
  	
  
  def wait_for_load_team_levels
      Watir::Wait.until {@browser.element(:text=>"Varsity").exists?}
  end

   def select_team_level
   		@browser.li(:text => 'Varsity').click
   end

   def scroll_up_page
        @browser.send_keys(:home)
   end

end

