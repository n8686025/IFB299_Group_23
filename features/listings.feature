Feature: Performs actions on listings
	When a person comes to the website
	They can add,view,delete and edit listings

	Scenario: Can add a listing
		Given I am on the listings page
		And I click the Create Listing link
		Then I should be on the listings new page
		Then I should see page title as Create a Listing
		When I enter all required details for a listing
		And I click the Create Listing button
		Then I should see the page for the listing with address 25 Example Street

	Scenario: Can view all listings
		Given I am on the listings page
		Then I should be on the listings page
		Then I should see page title as Listings
		Then I should see the text Address: MyString on the page

	Scenario: Can view a specific listing
		Given I am on the listings page
		And I click the View Listing link
		Then I should see the page for the listing with address MyString
		Then I should see page title as Listing 1

	Scenario: Can edit a listing
		Given I am on the listings page
		And I click the View Listing link
		And I click the Edit Listing link
		Then I should see page title as Edit a Listing
		When I enter all required details for a listing
		And I click the Save Listing button
		Then I should see the page for the listing with address 25 Example Street
		And I should see page title as Listing 1

	Scenario: Can delete a listing
		Given I am on the listings page
		And I click the View Listing link
		Then I should see the page for the listing with address MyString
		Then I should see page title as Listing 1
		And I click the Delete Listing button
		Then I should be on the home page
		Then I should see page title as Home
