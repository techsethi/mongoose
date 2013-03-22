Feature: Using Restaurant Search

Scenario: Searching for a cuisine

Given I am on Restaurant Home Page
When I enter "chinese" in keyword search box
	And I click Find 
Then I should see atleast 3 results with "Chinese" as Primary cuisine
	And Page should list "The China Kitchen"
	And I should not see results with "South indian" as Primary cuisine
	
Scenario: Searching for south Indian cuisine
Given I am on Restaurant Home Page
When I enter "south indian" in keyword search box
	And I click Find
Then I should see atleast 3 results with "South indian" as Primary cuisine
	And Page should list "Swagath Bar and Restaurant"
	And I should not see results with "mughlai" as Primary cuisine	
	