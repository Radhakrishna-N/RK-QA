class ProfileInfoPage
	include PageObject
    page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/profile')
 	link(:proceed_to_summary, :href => '/wizards/member_athlete/summary')
    
    def fill_up_profile_info(othername)
    	@browser.input(:class => 'other-name').to_subtype.set(othername)
    	#@browser.input(:enter_weight, :class => 'selected').to_subtype.set("80")
    	#:class => /odd_row|even_row/
    	#@browser.input(:enter_height, :class => 'span2 height').to_subtype.set("3")
    end

    def enter_mention(mention)
   		@browser.input(:class => 'mention').to_subtype.set(mention)
    end


    def enter_social_info (twitter,facebook)
    	@browser.input(:class => 'twitter').to_subtype.set(twitter)
    	@browser.input(:class => 'facebook').to_subtype.set(facebook)
    end 


    def enter_desc
       	@browser.textarea(:class => 'desc').set('this is automated profile')
    end

    def click_on_next
    	@browser.link(:href => '/wizards/member_athlete/summary').click
    end

    def scroll_up_page
        @browser.send_keys(:home)
    end

    def clear_height_weight
        @browser.text_field(:class =>"span2 weight").clear
        @browser.text_field(:class =>"span2 height").clear
    end
    
     
=begin
	def enter_other_names(othername) 
		@browser.input(:class => 'other-name').to_subtype.set(othername)
	end

	def enter_mention
		@browser.input(:class => 'mention').to_subtype.set("@radhar1s")
	end
=end
end 