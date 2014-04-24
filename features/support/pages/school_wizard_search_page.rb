class SchoolSearchPage
	include PageObject
	page_url("http://s195.qa1.mobile.sport195.com/wizards/schools/search")
	text_field(:country, :xpath => ".//*[@id='content']/div/div[2]/div/div/div[1]/span/div/input")
	text_field(:city, :xpath => ".//*[@id='content']/div/div[2]/div/div/div[3]/span/div/input")
	button(:button, :class => 'btn-next')


  def wait_for_page_load
  	Watir::Wait.until { @browser.url.include? "/wizards/schools/search" }
  end

def select_country=(country)
    a = @browser.element(:css => '.current-page input.autocomplete-input')
    a.send_keys(:delete)
    a.to_subtype.set(country)
    b = @browser.li(:text => "#{country}")
    sleep(10)
    b.send_keys(:enter)
  end
 
  def select_region=(region)
   b = text_field(:xpath => ".//*[@id='content']/div/div[2]/div/div/div[2]/span/div/input")
   b.send_keys(:delete)
   b.to_subtype.set(region)
   @browser.li(:text => "#{region}").when_present.click.send_keys(:left)
  end

  def select_city=(city)
  	self.city = city
    @browser.li(:text => "#{city}").when_present.click
  end

  def select_school_level=(level)
     @browser.label(:text => "#{level}").parent.radio.set
  end

  def gender=(gender)
     @browser.label(:text => "#{gender}").parent.radio.set
  end

end