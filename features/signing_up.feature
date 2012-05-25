Feature: Sign Up
	In order to sign up
	As a guest
	I want to be able to sign up

	Background:
		Given I am on the home page
		And I follow "Sign up"

	Scenario: Sign up
		When I fill in "Email" with "user@ticketee.com"
		And I fill in "Password" with "password"
		And I fill in "Password confirmation" with "password"
		And I press "Sign up"
		When "user@ticketee.com" opens the email with subject "Confirmation instructions"
		And I click the first link in the email
		Then I should see "confirmed"
		And I should see "Signed in as user@ticketee.com"
