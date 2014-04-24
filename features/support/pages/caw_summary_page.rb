class SummaryPage
	
	include PageObject
	page_url('http://s195.qa1.mobile.sport195.com/wizards/member_athlete/summary')
	link(:Add_another_level, :href => '/wizards/member_athlete/level')
	link(:finish, :css => ".btn-finish")

	def wizard_complete_step
 	  @browser.div(:class => "wizard-progress wizard-complete").present?
 	  #puts step.text
    end

    def verify_summary_Page_text
    	@browser.text.include? 'Athlete Profile Summary'
    end	

=begin
    #These are obsolated verfication steps

    def verify_school
    	@browser.text.include? 'Hunter College'
    end

    def	verify_teams
    	@browser.text.include? 'Hunter College Basketball Mens Varsity'
    	@browser.text.include? '#20'
    end
=end

    def self.verify_url_after_finishing
        Watir::Wait.until { browser.url.include? "/athletes/"}
    end

    def self.scroll_up_page
        @browser.send_keys(:home)
    end

    def select_option

        puts %Q{
            Enter the option with digits 1 or 2
            1. Add Another Level
            2. Finish the wizard
            }
             
        case gets().strip()

        when "1"
            @browser.element(:text => "Add Another Level").click

        when "2"
            @browser.element(:css => ".btn-finish").click
            self.scroll_up_page
            self.verify_url_after_finishing
        else
        puts "Inavlid option slected"
        end
    end

    
end 