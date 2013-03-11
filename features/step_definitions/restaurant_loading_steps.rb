Given(/^I am on "(.*?)" Restaurant Home Page$/) do |city|
	visit("/#{city}/restaurants")
end
