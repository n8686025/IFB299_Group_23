Feature: On the home page
	When a person comes to the website
	They should be on the home page

	Scenario: Can view the home page
		Given I am on the home page
		Then I should be on the home page
		And I should see page title as Home
