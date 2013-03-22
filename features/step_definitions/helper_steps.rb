Then /^I should see an image with the filename "([^\"]*)"$/ do |filename|
  page.all('img').detect do |img|
    img[:src].include?("/#{filename}")
  end.should be_present
end


Then /^the element "([^\"]+)" should( not)? have scrollbars$/ do |selector, no_scrollbars|
  scroll_height = page.execute_script("return $('#{selector}').get(0).scrollHeight;")
  offset_height = page.execute_script("return $('#{selector}').get(0).offsetHeight;")

  comparison = no_scrollbars ? '==' : '!='
  scroll_height.should.send(comparison, offset_height)
end

# Then "Mow lawn" should be an option for "Activity"
# But "Reply support mail" should not be an option for "Activity"

Then /^"([^"]*)" should( not)? be an option for "([^"]*)"(?: within "([^\"]*)")?$/ do |value, negate, field, selector|
  with_scope(selector) do
    expectation = negate ? :should_not : :should
    field_labeled(field).first(:xpath, ".//option[text() = '#{value}']").send(expectation, be_present)
  end
end
