Feature: Search for volunteer
	
	So that I can log my volunteering hours
	As a volunteer
	I want to find my record using my name, email, phone number or id number

	Scenario: Search by first name
		Given my name is "John Smith"
		When I go to the contacts page
			And I enter "John" into the search field
			And click search
		Then I should see the records for all volunteers called "John Smith"

	Scenario: Search by last name
		Given my name is "David Jones"
		When I go to the contacts page
			And I enter "Jones" into the search field
			And click search
		Then I should see the records for all volunteers called "David Jones"

