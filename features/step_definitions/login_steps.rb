Given(/^I am on the "(.*?)" home page$/) do |city|
    visit("/#{city}")
end

Given(/^If I am logged in$/) do 
    page.should have_css('#globalLogin a')
    page.find("#globalLogin a").text.should eql ("Login")
end

Given(/^I click on link "(.*?)"$/) do |link_text|
    click_link("#{link_text}")
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
       page.find("div.label").text.should eql ("Email")
    when "password label"
       page.find("div.label").text.should eql ("Password")
    when "email text box"
      page.should have_css('input#login_username')
    when "password text box"
      page.should have_css('input#login_password')
    else
      # nothing
    end
end

Then(/^I should see validation message "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter in "(.*?)" for Email text box$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I enter in "(.*?)" for Password text box$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see facebook login pop window$/) do
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

