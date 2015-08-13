Feature: Views the listings
	When a person comes to the website
	They can add,view,delete and edit listings

	Scenario: Can add a listing
		Given I am on the listings new page
		Then I should be on the listings new page
		And I should see page title as Create a Listing
		When I enter all required details for a new listing

	Scenario: Can view all listings
		Given I am on the listings page
		Then I should be on the listings page
		And I should see page title as Listings

	Scenario: Can view a specific listing
		Given I am on the listings page
		Then I should be on the listings page
		And I should see page title as Listings

	Scenario: Can edit a listing
		Given I am on the listings page
		Then I should be on the listings page
		And I should see page title as Listings

	Scenario: Can delete a listing
		Given I am on the listings page
		Then I should be on the listings page
		And I should see page title as Listings
