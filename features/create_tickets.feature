Feature: Create Tickets
	In order to create tickets
	As a user
	I want to be able to create tickets

	Background:
		Given the following projects exist:
			| title |
			| Vim   |
		And I am on the home page
		And I follow "Vim"
		And I follow "New Ticket"

	Scenario: Create ticket with valid attributes
		When I fill in "Title" with "Yanking rocks!"
		When I fill in "Description" with "Yanking is awesome!"
		And I press "Create Ticket"
		Then I should be on the ticket page for "Yanking rocks!"
		And I should see "Yanking rocks!"
		And I should see "Yanking is awesome"
		And I should see "Ticket has been created"

	
	Scenario: Update project with invalid attributes
		When I press "Create Ticket"
		Then I should see "Ticket has not been created"
		And I should see "Title can't be blank"
		And I should see "Description can't be blank"
