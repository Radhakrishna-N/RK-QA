@feature_1
Feature: signup Page

Scenario: Verify the signup process
Given Visit signup page
Given Enter the Firstname 
Given Enter the Lastname
Given Enter the Emailid
Given Enter the password
Then select Gender
And select the age
And Click on Create my free account now button
