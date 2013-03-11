Given(/^I am on "(.*?)" Events Home Page$/) do |city|
	visit("/#{city}/events")
end

Then(/^I should see (\d+) items in what's hot section$/) do |count_of_items|
	page.all('li.event_title').size.should == 5
end