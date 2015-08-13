require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should be on (.+)$/) do |page_name|
	assert_equal path_to(page_name), current_path
end

And(/^I should see page title as (.+)$/) do |title|
	assert_equal title, page.find(:css, 'title').text
end

When(/^I enter all required details for a new listing/) do

end
