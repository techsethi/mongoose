Given /^I am on Restaurant Home Page$/ do
  visit('/delhi/restaurants')
end

When /^I enter "(.*?)" in keyword search box$/ do |search_term|
  fill_in('searchname', :with => search_term)
end

When /^I click Find$/ do
  click_on('topsearchbtn')
end

Then /^I should see atleast (\d+) results with "(.*?)" as Primary cuisine$/ do |num_results, cuisine_name|

  results = page.all(:css, "div.desarea li.desstate", :visible => true)
  # ap results
  cuisine_match_count = 0
  results.each  { | result |
  # p result.inspect
  # p "Text : [#{result.text}] "
  cuisine_match_count += 1 if (result.text.match("Cuisine : #{cuisine_name}"))
    }
  
  # p "Found #{cuisine_match_count} times."  
  cuisine_match_count > num_results.to_i
  
end

Then /^Page should list "(.*?)"$/ do |restaurant_name|
    page.has_content?(restaurant_name)
end

Then /^I should not see results with "(.*?)" as Primary cuisine$/ do |cuisine|
  ! page.has_content?(cuisine)
end