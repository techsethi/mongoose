Feature: Using Restaurant Search

Scenario: Searching for a cuisine

Given I am on Restaurant Home Page
When I enter "pizza"
	And click "Find" 
Then I should see atleast 3 results with "chinese" as Primary cuisine
	And I should not see even 1 result with "south indian" as Primary cuisine
	
	
	