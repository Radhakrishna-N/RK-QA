Feature: Create A Member-Athlete profile

Background:
Scenario: Verify the signup process
Given Visit signup page
Given Enter the Firstname 
Given Enter the Lastname
Given Enter the Emailid
Given Enter the password
Then select Gender
And select the age
And Click on Create my free account now button

Scenario: Verify the Create Athlete Profile tab visibility
Given I am on My wall page
When I am logged into the site as Member then Create Athlete Profile tab should be displayed 

Scenario: Verify the Create Athlete Wizard
When i click on Create Athlete profile

Scenario: Verify the CAW introduction page
Then Create Athelte Wizard page should get opened
And Verify the Introduction page elements
And click on Create athlete profile button

Scenario: Verify the Claim Athlete page
Given Verify the Claim Athlete page


Scenario: Verify the levels page
Given Verify the CAW levels 
Then Select the any Highschool level


Scenario: Verify the Location search functionality page
Given Enter the country location
Then Enter the state 
And  Enter the city
And  Click on Next button

Scenario: Verify the Profile selection page
Given Add the profile
Then Enter the attended years
And Click to go sports selection page

Scenario: Verify the Sport selection page
Given Search for the sport
Then Click on Sport
Then Click to go Highschool team level section page

Scenario: Verify the Team level selection page
Given Select the Open level
Then Click Next to go to Team selection page

Scenario: Verify the Choose Team page
Given Select the team
Then Enter the Attended Years
And Enter the Jersey Number
And Selec Sport Role
And Click on Next to go Profile info step

Scenario: Verify the Profile info form
Given Enter the Profile info
Then Enter the Mention
And Enter the Social info


Scenario: Verify the Summary page
Given Verify the Final page 
Then Verify the school
And Verify the teams
And Click on Finish to complete the wizard

# PROCESS FOR COLLEGE ADDING 
Scenario: Verify the College level Process
Given Add The College as another level

Scenario: Verify the Location search functionality page
Given Enter the College country location
Then Enter the College state 
And  Enter the College city
And Click on Next button to go from college location

Scenario: Verify the Profile selection page
Given Add the College profile
Then Enter the College attended years
And Click on go to select the College sports selection page

Scenario: Verify the Sport selection page
Given Search for the College sport
Then Click on Sport to select the college level sport
Then Click on go to the College team leavel section page

Scenario: Verify the Team level selection page
Given Select the College level as Open
Then Click Next to go to Team selection page from college level page

Scenario: Verify the Choose Team page
Given Select the College team
Then Enter the College team Attended Years
And Enter the College team Jersey Number
And Select the College Team Sport Role
And Click on Next to go Profile info step from college team select step


Scenario: Verify the Profile info form
Given Enter the Profile again in college adding process
Then Edit the Mention
And Edit the Social info

Scenario: Verify the Summary page
Given Complete the wizard or Add Club as another level

# PROCESS FOR CLUB ADDING 

Scenario: Verify the Club level Process
Given Add The Club as another level

Scenario: Verify the Location search functionality page
Given Enter the Club country location
Then Enter the Club state 
And  Enter the Club city
And Click on Next button to go from Club location

Scenario: Verify the Profile selection page
Given Add the Club profile
Then Enter the Club attended years
And Click on go to select the Club sports selection page

Scenario: Verify the Sport selection page
Given Search for the Club sport
Then Click on Sport to select the Club level sport
Then Click on go to the Club team leavel section page

Scenario: Verify the Team level selection page
Given Select the Club level as Open
Then Click Next to go to Team selection page from Club level page

Scenario: Verify the Choose Team page
Given Select the Club team
Then Enter the Club team Attended Years
And Enter the Club team Jersey Number
And Select the Club Team Sport Role
And Click on Next to go Profile info step from Club team select step


Scenario: Verify the Profile info form
Given Enter the Profile again in Club adding process
Then Edit the Mention
And Edit the Social info

Scenario: Verify the Summary page
Given Complete the wizard after adding club levle or Add another level to 

# PROCESS FOR LEAGUE ADDING
Scenario: Verify the League level Process
Given Add The League as another level

Scenario: Verify the Location search functionality page
Given Enter the League country location
Then Enter the League state 
And  Enter the League city
And Click on Next button to go from League location

Scenario: Verify the Profile selection page
Given Add the League profile
Then Enter the League attended years
And Click on go to select the League sports selection page

Scenario: Verify the Sport selection page
Given Search for the League sport
Then Click on Sport to select the League level sport
Then Click on go to the League team leavel section page

Scenario: Verify the Team level selection page
Given Select the League level as Open
Then Click Next to go to Team selection page from League level page

Scenario: Verify the Choose Team page
Given Select the League team
Then Enter the League team Attended Years
And Enter the League team Jersey Number
And Select the League Team Sport Role
And Click on Next to go Profile info step from League team select step


Scenario: Verify the Profile info form
Given Enter the Profile again in League adding process
Then Edit the Mention
And Edit the Social info

Scenario: Verify the Summary page
Given Complete the wizard after adding League levle or Add another level 

# PROCESS FOR SOCIALLY WITH FRIENDS ADDING 





# NOTE : Added highscool and university code,

