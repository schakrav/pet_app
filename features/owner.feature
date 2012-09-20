Feature: Owner Information

In order to bill my clients
As a vet
I want to record owner information

	Scenario: title
	Given I am on the 'New Owner' page
	When I enter "Srinjoy" for "Firstname"
	And I enter "Chakravarty" for "Lastname"
	And I enter "chaxz93@gmail.com" for “Email”
	And I enter “66090897” for “Phone”
	And I enter "The Pearl Qatar" for “Address” 
	And I enter "Doha" for “City”  
	And I select "Qatar" for "Country"
	And I check the "Active with QATS" box
	And I click the "Create Owner" button
	Then I should see "Owner was succesfully created."
	And I should see “Name:”
	And I should see “Srinjoy Chakravarty”
	And I should see “Address:”
	And I should see “The Pearl Qatar”
	And I should see “Doha, QA”
	And I should see “Phone:”
	And I should see “66090897”
	And I should see “Email:”
	And I should see “chaxz93@gmail.com”
	And I should see “Active with QATS: true” 

