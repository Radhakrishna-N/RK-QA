Given(/^I am on My wall page$/) do
  on(WallPage) do |page|
    page.wait_for_load
  end
end

When(/^I am logged into the site as Member then Create Athlete Profile tab should be displayed$/) do
  on(StartPage) do |page|
    page.verify_caw_tab_visibility
  end
end

When(/^i click on Create Athlete profile$/) do
  on(StartPage) do |page|
    page.create_athlete_profile_tab
  end
end

Then(/^Create Athelte Wizard page should get opened$/) do
  on(StartPage) do |page|
    page.scroll_up_page
    page.verify_showcase_summary
    #page.verify_showcase_items_presence
  end
end

Then(/^Verify the Introduction page elements$/) do
  on(StartPage) do |page|
    page.verify_showcase_items_presence
  end
end

Then(/^click on Create athlete profile button$/) do
  on(StartPage) do |page|
    page.click_on_create_athlete_profile
  end
end


Given(/^Verify the Claim Athlete page$/) do
 on(ClaimAthletePage) do |page|
    page.check_match_profiles
    #page.verify_claim_message
    #page.verify_claim_text
  end
end


Given(/^Verify the CAW levels$/) do
  on(LevelPage) do |page|
    page.verify_levels_page
  end
end

#---------------------------------------
# Highschool Adding process

Then(/^Select the any Highschool level$/) do
  on(LevelPage) do |page|
    page.select_level
    sleep(10)
  end
end


Given(/^Enter the country location$/) do
  on(ProfileSearchPage) do |page|
    page.select_country= 'United States'
    sleep(5)
  end
end

Then(/^Enter the state$/) do
  on(ProfileSearchPage) do |page|
    page.select_region= 'New York'
  end

end

Then(/^Enter the city$/) do
  on(ProfileSearchPage) do |page|
    page.select_city= 'New York City'
  end
end

Then(/^Click on Next button$/) do
   on(ProfileSearchPage) do |page|
    page.proceed_to_chooseorg
  end
end

Given(/^Add the profile$/) do
  on(ChooseOrgPage) do |page|
    page.select_school
  end
end

Then(/^Enter the attended years$/) do
  on(ChooseOrgPage) do |page|
    page.scroll_up_page
    page.wait_for_load_month
    page.attended_years    
  end  
end

Then(/^Click to go sports selection page$/) do
  on(ChooseOrgPage) do |page|
    page.scroll_up_page
    page.proceed_to_sports_selection
  end
end



Given(/^Search for the sport$/) do
  on(SportSelectPage) do |page|
    page.scroll_up_page
    page.search_sport= 'Basketball'
    page.wait_for_load_sports
  end
end

Then(/^Click on Sport$/) do
  on(SportSelectPage) do |page|
    page.select_sport
  end
end

Then(/^Click to go Highschool team level section page$/) do
  on(SportSelectPage) do |page|
    page.proceed_to_team_level_selection
  end
end

Given(/^Select the Open level$/) do
  on (TeamLevelsPage) do |page|
    page.wait_for_load_team_levels
    page.select_team_level
  end
end

Then(/^Click Next to go to Team selection page$/) do
  on (TeamLevelsPage) do |page|
    page.proceed_to_select_team
  end
end

Given(/^Select the team$/) do
  on (ChooseTeamPage) do |page|
    #page.verify_url_teams
    #page.scroll_up_page
    page.wait_load_teams
    page.select_team
  end 
end

Then(/^Enter the Attended Years$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_month
    page.attended_years
  end 
end

Then(/^Enter the Jersey Number$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_jersey
    page.enter_jersey('20')
  end 
end

Then(/^Selec Sport Role$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_role
    page.select_sport_role
  end 
end

Then(/^Click on Next to go Profile info step$/) do
  on (ChooseTeamPage) do |page|
    page.proceed_to_profile
  end 
end

Given(/^Enter the Profile info$/) do
  on(ProfileInfoPage) do |page|
    page.fill_up_profile_info('automated user1')
    page.enter_desc
  end    
end

Then(/^Enter the Mention$/) do
  on(ProfileInfoPage) do |page|
    page.enter_mention('@automate_user1') 
  end 
end

Then(/^Enter the Social info$/) do
  on(ProfileInfoPage) do |page|
    page.enter_social_info('Sachin_rt','www.facebook')
    page.click_on_next
  end
end

Given(/^Verify the Final page$/) do
 on(SummaryPage) do |page|
    page.wizard_complete_step
  end
end


Then(/^Click on Finish to complete the wizard$/) do
  on(SummaryPage) do |page|
    page.select_option
    sleep(10)
  end
end

#---------------------------------------------------

#College adding process

Given(/^Add The College as another level$/) do
  on(LevelPage) do |page|
  page.select_level
  sleep(10)
  end
end

Given(/^Enter the College country location$/) do
  on(ProfileSearchPage) do |page|
    page.select_country= 'United States'

  end
end

Then(/^Enter the College state$/) do
  on(ProfileSearchPage) do |page|
    page.select_region= 'New York'
  end

end

Then(/^Enter the College city$/) do
  on(ProfileSearchPage) do |page|
    page.select_city= 'New York City'
  end
end

Then(/^Click on Next button to go from college location$/) do
   on(ProfileSearchPage) do |page|
    page.proceed_to_chooseorg
  end
end

Given(/^Add the College profile$/) do
  on(ChooseOrgPage) do |page|
    page.select_school
  end
end

Then(/^Enter the College attended years$/) do
  on(ChooseOrgPage) do |page|
    page.scroll_up_page
    page.wait_for_load_month
    page.attended_years    
  end  
end

Then(/^Click on go to select the College sports selection page$/) do
  on(ChooseOrgPage) do |page|
    page.scroll_up_page
    page.proceed_to_sports_selection
  end
end


Given(/^Search for the College sport$/) do
  on(SportSelectPage) do |page|
    page.scroll_up_page
    page.search_sport= 'Basketball'
    page.wait_for_load_sports
  end
end

Then(/^Click on Sport to select the college level sport$/) do
  on(SportSelectPage) do |page|
    page.select_sport
  end
end

Then(/^Click to go team leavel section page$/) do
  on(SportSelectPage) do |page|
    page.proceed_to_team_level_selection
  end
end

Given(/^Select the College level as Open$/) do
  on (TeamLevelsPage) do |page|
    page.wait_for_load_team_levels
    page.select_team_level
  end
end

Then(/^Click Next to go to Team selection page from college level page$/) do
  on (TeamLevelsPage) do |page|
    page.proceed_to_select_team
  end
end

Given(/^Select the College team$/) do
  on (ChooseTeamPage) do |page|
    page.verify_url_teams
    page.scroll_up_page
    page.wait_load_teams
    page.select_school_teams
  end 
end

Then(/^Enter the College team Attended Years$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_month
    page.attended_years
  end 
end

Then(/^Enter the College team Jersey Number$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_jersey
    page.enter_jersey('20')
  end 
end

Then(/^Select the College Team Sport Role$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_role
    page.select_sport_role
  end 
end

Then(/^Click on Next to go Profile info step from college team select step$/) do
  on (ChooseTeamPage) do |page|
    page.proceed_to_profile
  end 
end

Given(/^Enter the Profile again in college adding process$/) do
  on(ProfileInfoPage) do |page|
    page.fill_up_profile_info('automated user1')
    page.enter_desc
  end    
end

Then(/^Edit the Mention$/) do
  on(ProfileInfoPage) do |page|
    page.enter_mention('@automate_user1') 
  end 
end

Then(/^Edit the Social info$/) do
  on(ProfileInfoPage) do |page|
    page.enter_social_info('Sachin_rt','www.facebook')
    page.click_on_next
  end
end

Given(/^Verify the Final page after completion of college leve$/) do
 on(SummaryPage) do |page|
    page.wizard_complete_step
  end
end

Given(/^Complete the wizard or Add Club as another level$/) do
  on(SummaryPage) do |page|
    page.select_option
    sleep(10)
  end
end



#---------------------------------------------------
# Club Adding process
puts "Club level adding"

Given(/^Add The Club as another level$/) do
  on(LevelPage) do |page|
    page.select_level
    sleep(10)
  end
  
end

Given(/^Enter the Club country location$/) do
  on(ProfileSearchPage) do |page|
    page.select_country= 'United States'
    sleep(5)
  end
end

Then(/^Enter the Club state$/) do
  on(ProfileSearchPage) do |page|
    page.select_region= 'New York'
  end
end

Then(/^Enter the Club city$/) do
  on(ProfileSearchPage) do |page|
    page.select_city= 'New York City'
  end
end

Then(/^Click on Next button to go from Club location$/) do
   on(ProfileSearchPage) do |page|
    page.proceed_to_chooseorg
  end
end

Given(/^Add the Club profile$/) do
 on(ChooseOrgPage) do |page|
    page.select_school
  end
end

Then(/^Enter the Club attended years$/) do
  on(ChooseOrgPage) do |page|
    page.scroll_up_page
    page.wait_for_load_month
    page.attended_years    
  end  
end

Then(/^Click on go to select the Club sports selection page$/) do
  on(ChooseOrgPage) do |page|
    page.scroll_up_page
    page.proceed_to_sports_selection
  end
end

Given(/^Search for the Club sport$/) do
  on(SportSelectPage) do |page|
    page.scroll_up_page
    page.search_sport= 'Basketball'
    page.wait_for_load_sports
  end
end

Then(/^Click on Sport to select the Club level sport$/) do
  on(SportSelectPage) do |page|
    page.select_sport
  end
end

Then(/^Click on go to the Club team leavel section page$/) do
  on(SportSelectPage) do |page|
    page.proceed_to_team_level_selection
  end
end

Given(/^Select the Club level as Open$/) do
  on (TeamLevelsPage) do |page|
    page.wait_for_load_team_levels
    page.select_team_level
  end
end

Then(/^Click Next to go to Team selection page from Club level page$/) do
  on (TeamLevelsPage) do |page|
    page.proceed_to_select_team
  end
end

Given(/^Select the Club team$/) do
 on (ChooseTeamPage) do |page|
    #page.verify_url_teams
    #page.scroll_up_page
    page.wait_load_teams
    page.select_team
  end 
end

Then(/^Enter the Club team Attended Years$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_month
    page.attended_years
  end 
end

Then(/^Enter the Club team Jersey Number$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_jersey
    page.enter_jersey('20')
  end 
end

Then(/^Select the Club Team Sport Role$/) do
  on (ChooseTeamPage) do |page|
    page.wait_for_load_role
    page.select_sport_role
  end 
end

Then(/^Click on Next to go Profile info step from Club team select step$/) do
  on (ChooseTeamPage) do |page|
    page.proceed_to_profile
  end 
end

Given(/^Enter the Profile again in Club adding process$/) do
  on(ProfileInfoPage) do |page|
    page.fill_up_profile_info('automated user1')
    page.enter_desc
  end 
end 
# have not added the code for adding @mention , adding social info and verification for final page

Given(/^Complete the wizard after adding club levle or Add another level to$/) do
  on(SummaryPage) do |page|
    page.select_option
    sleep(10)
  end
end

#---------------------------------------------------

# League Adding process
Given(/^Add The League as another level$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Enter the League country location$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Enter the League state$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Enter the League city$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Click on Next button to go from League location$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Add the League profile$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Enter the League attended years$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Click on go to select the League sports selection page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Search for the League sport$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Click on Sport to select the League level sport$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Click on go to the League team leavel section page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Select the League level as Open$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Click Next to go to Team selection page from League level page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Select the League team$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Enter the League team Attended Years$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Enter the League team Jersey Number$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Select the League Team Sport Role$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Click on Next to go Profile info step from League team select step$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Enter the Profile again in League adding process$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Edit the Mention$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Edit the Social info$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^Complete the wizard after adding League levle or Add another level$/) do
  pending # express the regexp above with the code you wish you had
end


#-----------------------------------
# Adding socially with friend level as another level