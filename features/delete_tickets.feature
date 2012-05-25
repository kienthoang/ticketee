Feature: Delete existing tickets
	In order to delete existing tickets
	As a user
	I want to be able to delete existing tickets

	Scenario: Delete Tickets
		Given the following projects exist:
			| title |
			| Vim		|
		And the following tickets exist:
			| title					 | description				 |
			| Yanking rocks! | Yanking is awesome! |
		And I am on the home page
		When I follow "Vim"
		And I follow "Yanking rocks!"
		And I follow "Delete Ticket"
		Then I should see "Ticket has been deleted"
		And I should be on the project page for "Vim"
		And I should not see "Yanking rocks!"
