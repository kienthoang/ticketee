Feature: Create Projects
	In order to create new projects
	As an admin
	I want to be able to create new projects

	Background:
		Given I am on the home page
		And I follow "New Project"
	
	Scenario: Create Projects with valid attributes
		When I fill in "Title" with "Vim"
		And I press "Create Project"
		Then I should be on the project page for "Vim"
		And I should see "Project has been created"
		And I should see "Vim"

	Scenario: Create Projects with invalid attributes
		When I press "Create Project"
		Then I should see "Project has not been created"
		And I should see "Title can't be blank"
