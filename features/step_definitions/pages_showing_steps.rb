Given(/^I am on "(.*?)" Home Page$/) do |city|
	visit("/#{city}")
end

Then(/^I should see "(.*?)" on this page$/) do |text|
    page.should have_content(text)
end
