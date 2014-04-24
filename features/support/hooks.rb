require 'watir-webdriver'
browser = Watir::Browser.new :firefox

Before do
  @browser = browser
  # We can resize the browser based on custom size
  #@browser.window.maximize.resize_to(500, 768)  # [iPad    View] 	 
  #@browser.window.maximize.resie_to(150,700) 	# [Mobile  View]
  #@browser.window.maximize() 					# [Desktop View]
end
	

AfterStep('@pause') do
  print "Press Return to continue..."
  STDIN.getc
end

After do |scenario|
  Cucumber.wants_to_quit = true if scenario.failed?
end

After do |scenario|
  if scenario.failed?
    filename = "error-#{@current_page.class}-#{Time.now}.png"
    @current_page.save_screenshot(filename)
    embed(filename,'image/png')
  end
end
=begin
at_exit do
  browser.close
end
=end
