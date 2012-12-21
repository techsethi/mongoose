Given /^I am on google\.com$/ do
  visit('http://www.google.com')
end

When /^I enter "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
end

Then /^I should see results$/ do
# debugger
page.all(:css , 'div#res', :visible => true ) { |div| puts div.text }
  page.should have_css('div#res li')
end
