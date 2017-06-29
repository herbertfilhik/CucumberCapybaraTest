Given /^I open Google$/ do
  visit 'http://www.google.com.co'
end

When /^I searc "(.*?)"$/ do |arg1|
  fill_in('q', :with => "Agile Manifesto")
  #puts page
  #click_button("btnG")
end

Then /^I should see a link to "(.*?)"$/ do |url|
  page.should have_content("Manifesto for Agile Software Development")
end