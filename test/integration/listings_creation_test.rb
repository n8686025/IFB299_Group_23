require 'test_helper'

class ListingsCreationTest < ActionDispatch::IntegrationTest
	test 'invalid listing information' do
		get listings_new_path
		assert_no_difference 'Listing.count' do
			post listings_path, listing: { address: "" }
		end
		assert_template 'listings/new'
	end

	test 'valid listings information' do
		get listings_new_path
		assert_difference 'Listing.count' do
			post listings_path, listing: { address: "Example Address" }
		end
		listing_redirect = "#{listings_path}/#{assigns(:listing).id}"
		assert_redirected_to listing_redirect
	end
end
