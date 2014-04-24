Given(/^Visit signup page$/) do
  visit(Signuppage) 
     #sleep(10)
end

Given(/^Enter the Firstname$/) do
	on(Signuppage) do |page|
		page.first_name('mr')
  end
end

Given(/^Enter the Lastname$/) do
	on(Signuppage) do |page|
		page.last_name ('cool10')
	end
  
end

Given(/^Enter the Emailid$/) do
  on(Signuppage) do |page|
  	page.email_id('cool10@gmail.com')
  end
end

Given(/^Enter the password$/) do
  on(Signuppage) do |page|
  	page.password('123456')
    sleep(5)
  end
end

Then(/^select Gender$/) do
  on(Signuppage) do |page|
  	page.gender
  end
end

Then(/^select the age$/) do
  on(Signuppage) do |page|
  	page.age
  end
end

Then(/^Click on Create my free account now button$/) do
  on(Signuppage) do |page|
   page.sign_up
   page.my_feed
    
  end
end



