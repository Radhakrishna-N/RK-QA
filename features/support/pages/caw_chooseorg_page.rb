class ChooseOrgPage
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/chooseorg')
	link(:proceed_to_sports_selection, :href => '/wizards/member_athlete/sports')


    def select_profile
       @browser.li(:class => 'update-item').click
    end


	def search_org= (org)
		@browser.text_field(:class =>'search-input').set(org)
	    @browser.send_keys(:enter)
	end	
    

 	def verify_url
    	Watir::Wait.until {@browser.url.include? "/wizards/member_athlete/chooseorg"}
    end

    def select_school
		@browser.div(:class => 'page-menu-info').click
	end

	def scroll_up_page
        @browser.send_keys(:home)
    end

     def wait_for_load_month
     	Watir::Wait.until{@browser.input(:class => "span2 from").exists?}
     end

    def wait_for_search_results
		Watir::Wait.until{@browser.div(:class => "page-menu-info").exists?}
	end

    
	def attended_years 
		@browser.input(:class => "span2 from").to_subtype.set("2000-01")
		@browser.input(:class => "span2 to").to_subtype.set("2006-01")
	end


end
