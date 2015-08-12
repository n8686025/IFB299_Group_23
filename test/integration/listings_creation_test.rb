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

	test 'delete listings' do
		get listings_new_path
		post listings_path, listing: { address: "Example Address" }
		listing_page = "#{listings_path}/#{assigns(:listing).id}"
		assert_difference 'Listing.count', -1 do
			post listing_page
		end
		assert_redirected_to root_path
	end
end
