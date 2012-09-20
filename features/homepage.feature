Feature: Home Page

	In order to have a place for clients to land
	As a vet
	I want to have a homepage for the application

		Scenario: Homepage
			When I go to the application root
			Then I should see "Welcome to my application!"


		Scenario: Aboutpage
			When I go to the about page
			Then I should see "About Us"


		Scenario: Contactpage
			When I go to the contact page
			Then I should see "Contact Us"

		Scenario: Privacypage
			When I go to the privacy page
			Then I should see "Our Privacy Policy"


