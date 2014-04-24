Feature: Test this map

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