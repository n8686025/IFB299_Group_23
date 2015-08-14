Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I enter all required details for a listing$/) do
	fill_in 'listing[address]', :with => '25 Example Street'
	fill_in 'listing[price]', :with => 250
	select(2015, :from => 'listing[showing_dates(1i)]')
	select('January', :from => 'listing[showing_dates(2i)]')
	select(1, :from => 'listing[showing_dates(3i)]')
	fill_in 'listing[utilities]', :with => 'Grocery store'
	fill_in 'listing[bedrooms]', :with => 3
	fill_in 'listing[bathrooms]', :with => 2
	fill_in 'listing[car_parks]', :with => 2
	fill_in 'listing[extra_info]', :with => 'Great location'
end

When(/^I enter all required details for an email$/) do
	fill_in 'name', :with => 'Example name'
	fill_in 'email', :with => 'test@example.com'
	fill_in 'phone', :with => '1234 5678'
	fill_in 'message', :with => 'Test Message'
end

Then(/^I should be on (.+)$/) do |page_name|
	assert_equal path_to(page_name), current_path
end

Then(/^I should see page title as (.+)$/) do |title|
	assert_equal title, page.find(:css, 'title').text
end

Then(/^I should see the page for the listing with address (.+)$/) do |listing_address|
	listing = Listing.find_by_address(listing_address)
	assert_equal "/listings/#{listing.id}", current_path
end

Then(/^I should see the text (.+) on the page$/) do |listing_address|
	assert_includes page.text, listing_address
end

And(/^I click the (.+) button$/) do |button|
	first(:button, button).click
end

And(/^I click the (.+) link$/) do |link|
	first(:link, link).click
end
