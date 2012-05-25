Feature: Edit Tickets
	In order to edit tickets
	As a user
	I want to be able to edit tickets

	Background:
		Given the following projects exist:
			| title |
			| Vim   |
		And the following tickets exist:
			| title					 | description				 |
			| Yanking rocks! | Yanking is awesome! |
		And I am on the home page
		And I follow "Vim"
		And I follow "Yanking rocks!"
		And I follow "Edit Ticket"

	Scenario: Edit ticket with valid attributes
		When I fill in "Title" with "Yanking is superb!"
		When I fill in "Description" with "Yanking!!!"
		And I press "Update Ticket"
		Then I should be on the ticket page for "Yanking is superb!"
		And I should see "Yanking is superb!"
		And I should see "Yanking!!!"
		And I should see "Ticket has been updated"
		And I should not see "Yanking rocks!"
		And I should not see "Yanking is awesome"
	
	Scenario: Update project with invalid attributes
		When I fill in "Title" with ""
		And I fill in "Description" with ""
		When I press "Update Ticket"
		Then I should see "Ticket has not been updated"
		And I should see "Title can't be blank"
		And I should see "Description can't be blank"
