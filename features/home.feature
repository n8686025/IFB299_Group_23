Feature: On the home page
	When a person come to the website
	They should be on the home page

	Scenario: Starts on the home page
		Given I am on the home page
		Then I should be on the home page
		And I should see page title as Home
