Feature: Using Restaurant Search

Scenario: Searching for a cuisine

Given I am on Restaurant Home Page
When I enter "chinese" in keyword search box
	And I click Find 
Then I should see atleast 3 results with "chinese" as Primary cuisine
	And Page should list "The China Kitchen"
	And I should not see results with "south indian" as Primary cuisine
	
	
	