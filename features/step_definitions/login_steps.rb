Given(/^I am on the "(.*?)" home page$/) do |city|
    visit("/#{city}")
end

Given(/^If I am logged in$/) do 
    page.should have_css('#globalLogin a')
    page.find("#globalLogin a").text.should eql ("Login")
end

Given(/^I click on link "(.*?)"$/) do |link_text|
    click_link('link_text')
end

Then(/^I should be successfully logged out on this page$/) do 
    page.should have_css('#globalLogin a')
    page.find("#globalLogin a").text.should eql ("Login")
end

Given(/^I am logged out$/) do 
    page.should have_css('#globalLogin a')
    page.find("#globalLogin a").text.should eql ("Login")
end

Then(/^I should be see "(.*?)"$/) do |item|
    case item
    when "email address label"
      puts 'Well done!'
    when "B"
      puts 'Try harder!'
    when "C"
      puts 'You need help!!!'
    else
      puts "You just making it up!"
    end
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I enter "(.*?)" in textbox$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I leave the "(.*?)" blank$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I click "(.*?)" in the login popup$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see validation message "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter "(.*?)" in textbox$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I leave the "(.*?)" blank$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I click "(.*?)" in the login popup$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I click "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter in "(.*?)" for Email text box$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter in "(.*?)" for Password text box$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see user name on home page with Hi Gagan$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I click on "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see facebook login pop window$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I enter in "(.*?)" for Email text box$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I enter in "(.*?)" for "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given(/^I click on "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter in "(.*?)" for "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^the facebook login popup should say "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^Pop up window should open with title "(.*?)" with email label and text box$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter email address and click on submit button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a message "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end