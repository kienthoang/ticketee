Feature: Delete existing projects
	In order to delete existing projects
	As an admin
	I want to be able to delete existing projects

	Scenario: Delete Projects
		Given the following projects exist:
			| title |
			| Vim		|
		And I am on the home page
		When I follow "Vim"
		And I follow "Delete Project"
		Then I should see "Project has been deleted"
		And I should not see "Vim"
